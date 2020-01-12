import React from 'react';
import ReactDOM from 'react-dom';
import { DrizzleProvider } from "drizzle-react";
import App from './components/App';

import OpenEvents from '../build/contracts/OpenEvents.json';
import StableToken from '../build/contracts/StableToken.json';
import Moon from './config/Moon.json';



const options = {

	
	contracts: [OpenEvents, StableToken],
	
	events: {
		OpenEvents: ['CreatedEvent','SoldTicket']
	},
	transactions:{
		txHash:{
			
		}
	}
};

ReactDOM.render(
    <DrizzleProvider options={options}>
		<App />
	</DrizzleProvider>,
    document.getElementById("root")
);
