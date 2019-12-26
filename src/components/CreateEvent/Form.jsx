import React, { Component } from 'react';
import { Link } from 'react-router-dom';
import Datetime from 'react-datetime';
import 'react-datetime/css/react-datetime.css';
import eventTypes from '../../config/types.json';
import eventTopics from '../../config/topics.json';

class Form extends Component {
	constructor(props) {
		super(props);

		this.form = {};

		this.state = {
			title: '',
			title_length: 0,
			description_length: 0,
			organizer_length: 0,
			time: 0,
			currency: 'hydro',
			limited: false,
			wrong_file: false,
			file_name: null,
			file: null,
			form_validation: []
		}
	}

	handleDate = (date) => {
		if (typeof date === 'object' && date.isValid()) {
			this.setState({
				time: date.unix()
			});
		}
	}

	handleCurrency = (event) => {
		this.setState({
			currency: event.target.value
		});
	}

	handleLimited = () => {
		this.setState({
			limited: !this.state.limited
		});
	}

	handleFile = (event) => {
		let file = event.target.files[0];
		if (
			file.size > 1024 * 1024 ||
			(file.type !== 'image/jpeg' && file.type !== 'image/png')
		) {
			this.setState({
				wrong_file: true,
				file: null
			});
		} else {
			this.setState({
				wrong_file: false,
				file_name: file.name,
				file: file
			});
		}
	}

	titleChange = (event) => {
		let title = event.target.value;
		if (title.length > 160) {
			title = title.slice(0, 160);
		}
		this.setState({
			title: title,
			title_length: title.length
		});
	}

	descriptionChange = (event) => {
		let description = event.target.value;
		if (description.length > 500) {
			description = description.slice(0, 500);
		}
		this.setState({
			description: description,
			description_length: description.length
		});
	}

	organizerChange = (event) => {
		let organizer = event.target.value;
		if (organizer.length > 100) {
			organizer = organizer.slice(0, 100);
		}
		this.setState({
			organizer: organizer,
			organizer_length: organizer.length
		});
	}

	handleForm = (event) => {
		event.preventDefault();

		let form_validation = [];
		if (this.state.title === '') form_validation.push('name');
		if (this.state.organizer === '') form_validation.push('organizer');
		if (this.form.description.value === '') form_validation.push('description');
		if (this.state.wrong_file === true || this.state.file === null) form_validation.push('image');
		if (this.state.time === 0) form_validation.push('time');
		if (this.form.price.value === '') form_validation.push('price');
		if (this.state.limited === true && this.form.seats.value < 1) form_validation.push('seats');

		this.setState({
			form_validation: form_validation
		});

		if (form_validation.length === 0) {
			this.props.createEvent(
				this.state.title,
				this.state.organizer,
				this.form.description.value,
				this.state.file,
				this.state.time,
				this.state.currency,
				this.form.price.value,
				this.state.limited,
				this.form.seats.value
			);
		}
	}

	render() {
		let symbol = this.state.currency === 'eth' ? 'ethereum.png' : 'hydro.png';

		let file_label = !this.state.wrong_file && this.state.file_name !== '' ? this.state.file_name : 'Select file';

		let warning = {
			name: this.state.form_validation.indexOf('name') === -1 ? '' : 'is-invalid',
			organizer: this.state.form_validation.indexOf('organizer') === -1 ? '' : 'is-invalid',
			description: this.state.form_validation.indexOf('description') === -1 ? '' : 'is-invalid',
			image: this.state.form_validation.indexOf('image') === -1 && !this.state.wrong_file ? '' : 'is-invalid',
			time: this.state.form_validation.indexOf('time') === -1 ? '' : 'is-invalid',
			price: this.state.form_validation.indexOf('price') === -1 ? '' : 'is-invalid',
			seats: this.state.form_validation.indexOf('seats') === -1 ? '' : 'is-invalid',
		};

		let alert;

		if (this.state.form_validation.length > 0) {
			alert = <div className="alert alert-dark mt-2" role="alert">Required fields are missed.</div>
		}

		return (
			<form>
				<div className="form-group">
					<label htmlFor="name">Event Name:</label>
					<input type="text" className={"form-control " + warning.name} id="name" value={this.state.title} onChange={this.titleChange} autoComplete="off" />
					<small className="form-text text-muted">{this.state.title_length}/160 characters available.</small>
				</div>
				<div className="form-group">
					<label htmlFor="description">Event Description:</label>
					<textarea className={"form-control " + warning.description} id="description" rows="5" ref={(input) => this.form.description = input} onChange={this.descriptionChange} autoComplete="off"></textarea>
					<small className="form-text text-muted">{this.state.description_length}/500 characters available.</small>
				</div>
				<div className="form-group">
					<p>Event Cover Image:</p>
					<div className="custom-file">
						<input type="file" className={"custom-file-input " + warning.image} id="customFile" onChange={this.handleFile} autoComplete="off" />
						<label className="custom-file-label" htmlFor="customFile">{file_label}</label>
					</div>
					<small className="form-text text-muted">Image format: jpg, png. Max file size 1mb.</small>
				</div>
				<div className="form-group">
					<label htmlFor="description">Event Date and Time:</label>
					<Datetime closeOnSelect={true} onChange={this.handleDate} inputProps={{className : "form-control " + warning.time}} autoComplete="off" />
				</div>
				<div className="form-group">
					<label htmlFor="organizer">Organizer Name:</label>
					<input type="text" className={"form-control " + warning.organizer} id="organizer" value={this.state.organizer} onChange={this.organizerChange} autoComplete="off" />
					<small className="form-text text-muted">{this.state.organizer_length}/100 characters available.</small>
				</div>
				<div className="form-group">
					<label htmlFor="description">Event Type:</label>
					<select className="form-control">
					<option value="" defaultValue="selected" disabled="disabled">Select the type of the event</option>
					{eventTypes.map((Type, index) => (
						<option value="{Type.slug}" key={Type.name}>{Type.name}</option>
					))}
					</select>
				</div>
				<div className="form-group">
					<label htmlFor="description">Event Topic:</label>
					<select className="form-control">
					<option value="" defaultValue="selected" disabled="disabled">Select the topic of the event</option>
					{eventTopics.map((Topic, index) => (
						<option value="{Topic.slug}" key={Topic.name}>{Topic.name}</option>
					))}
					</select>
				</div>
				<br />
				<hr />
				<br />
				<div className="form-group">
					<p>Payment Options:</p>
					<div className="custom-control custom-radio custom-control-inline">
						<input type="radio" id="payment2" name="payment" className="custom-control-input" defaultChecked="true" value="hydro" onChange={this.handleCurrency} autoComplete="off" />
						<label className="custom-control-label" htmlFor="payment2">Hydro</label>
					</div>
					<div className="custom-control custom-radio custom-control-inline">
						<input type="radio" id="payment1" name="payment" className="custom-control-input" value="eth" onChange={this.handleCurrency} autoComplete="off" />
						<label className="custom-control-label" htmlFor="payment1">Ethereum</label>
					</div>
				</div>
				<div className="form-group row">
					<div className="col-lg-3">
						<label htmlFor="price">Ticket Price:</label>
						<div className="input-group mb-3">
							<div className="input-group-prepend">
								<span className="input-group-text"><img src={'/images/'+symbol} className="event_price-image" /></span>
							</div>
							<input type="number" min="0.000001" className={"form-control " + warning.price} id="price" ref={(input) => this.form.price = input} autoComplete="off" />
						</div>
					</div>
				</div>
				<div className="form-group">
					<p>Ticket Options:</p>
					<div className="custom-control custom-checkbox">
						<input type="checkbox" className="custom-control-input" id="limited" value="true" onChange={this.handleLimited} autoComplete="off" />
						<label className="custom-control-label" htmlFor="limited">Limited tickets</label>
					</div>
					<div className="row mt-3">
						<div className="col-lg-3">
							<label htmlFor="seats">Tickets available:</label>
							<input type="number" className={"form-control " + warning.seats} id="seats" disabled={!this.state.limited}  ref={(input) => this.form.seats = input} autoComplete="off" />
						</div>
					</div>
				</div>
				{alert}
				<button type="submit" className="btn btn-outline-dark" onClick={this.handleForm}>Make Your Event Live</button>
			</form>
		);
	}
}

export default Form;
