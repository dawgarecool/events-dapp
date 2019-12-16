const snowflake = {
  address: '0xB0D5a36733886a4c5597849a05B315626aF5222E',
  contractName: 'Snowflake',
  abi: [{"constant":false,"inputs":[{"name":"einFrom","type":"uint256"},{"name":"einTo","type":"uint256"},{"name":"amount","type":"uint256"}],"name":"transferSnowflakeBalanceFrom","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[{"name":"","type":"uint256"}],"name":"signatureNonce","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"destination","type":"address"},{"name":"amount","type":"uint256"},{"name":"data","type":"bytes"},{"name":"approvingAddress","type":"address"},{"name":"v","type":"uint8"},{"name":"r","type":"bytes32"},{"name":"s","type":"bytes32"}],"name":"allowAndCallDelegated","outputs":[{"name":"returnData","type":"bytes"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[],"name":"clientRaindropAddress","outputs":[{"name":"","type":"address"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"approvingAddress","type":"address"},{"name":"newRecoveryAddress","type":"address"},{"name":"v","type":"uint8"},{"name":"r","type":"bytes32"},{"name":"s","type":"bytes32"}],"name":"triggerRecoveryAddressChangeFor","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[{"name":"einTo","type":"uint256"},{"name":"amount","type":"uint256"}],"name":"transferSnowflakeBalance","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[{"name":"einFrom","type":"uint256"},{"name":"via","type":"address"},{"name":"to","type":"address"},{"name":"amount","type":"uint256"},{"name":"_bytes","type":"bytes"}],"name":"withdrawSnowflakeBalanceFromVia","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[{"name":"approvingAddress","type":"address"},{"name":"providers","type":"address[]"},{"name":"v","type":"uint8"},{"name":"r","type":"bytes32"},{"name":"s","type":"bytes32"},{"name":"timestamp","type":"uint256"}],"name":"addProvidersFor","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[],"name":"signatureTimeout","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"recoveryAddress","type":"address"},{"name":"associatedAddress","type":"address"},{"name":"providers","type":"address[]"},{"name":"casedHydroId","type":"string"},{"name":"v","type":"uint8"},{"name":"r","type":"bytes32"},{"name":"s","type":"bytes32"},{"name":"timestamp","type":"uint256"}],"name":"createIdentityDelegated","outputs":[{"name":"ein","type":"uint256"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[{"name":"approvingAddress","type":"address"},{"name":"newProviders","type":"address[]"},{"name":"oldProviders","type":"address[]"},{"name":"v","type":"uint8[2]"},{"name":"r","type":"bytes32[2]"},{"name":"s","type":"bytes32[2]"},{"name":"timestamp","type":"uint256[2]"}],"name":"upgradeProvidersFor","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[{"name":"resolvers","type":"address[]"},{"name":"withdrawAllowances","type":"uint256[]"}],"name":"changeResolverAllowances","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[],"name":"renounceOwnership","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[],"name":"hydroTokenAddress","outputs":[{"name":"","type":"address"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"_clientRaindropAddress","type":"address"}],"name":"setClientRaindropAddress","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[{"name":"approvingAddress","type":"address"},{"name":"resolver","type":"address"},{"name":"isSnowflake","type":"bool"},{"name":"withdrawAllowance","type":"uint256"},{"name":"extraData","type":"bytes"},{"name":"v","type":"uint8"},{"name":"r","type":"bytes32"},{"name":"s","type":"bytes32"},{"name":"timestamp","type":"uint256"}],"name":"addResolverFor","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[{"name":"ein","type":"uint256"},{"name":"resolver","type":"address"},{"name":"isSnowflake","type":"bool"},{"name":"withdrawAllowance","type":"uint256"},{"name":"extraData","type":"bytes"}],"name":"addResolverAsProvider","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"isOwner","outputs":[{"name":"","type":"bool"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"sender","type":"address"},{"name":"amount","type":"uint256"},{"name":"_tokenAddress","type":"address"},{"name":"_bytes","type":"bytes"}],"name":"receiveApproval","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[{"name":"_identityRegistryAddress","type":"address"},{"name":"_hydroTokenAddress","type":"address"}],"name":"setAddresses","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[{"name":"destination","type":"address"},{"name":"amount","type":"uint256"},{"name":"data","type":"bytes"}],"name":"allowAndCall","outputs":[{"name":"returnData","type":"bytes"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[{"name":"einFrom","type":"uint256"},{"name":"via","type":"address"},{"name":"einTo","type":"uint256"},{"name":"amount","type":"uint256"},{"name":"_bytes","type":"bytes"}],"name":"transferSnowflakeBalanceFromVia","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[{"name":"resolver","type":"address"},{"name":"isSnowflake","type":"bool"},{"name":"extraData","type":"bytes"}],"name":"removeResolver","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[{"name":"approvingAddress","type":"address"},{"name":"resolvers","type":"address[]"},{"name":"withdrawAllowances","type":"uint256[]"},{"name":"v","type":"uint8"},{"name":"r","type":"bytes32"},{"name":"s","type":"bytes32"}],"name":"changeResolverAllowancesDelegated","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[],"name":"identityRegistryAddress","outputs":[{"name":"","type":"address"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[{"name":"","type":"uint256"}],"name":"deposits","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"to","type":"address"},{"name":"amount","type":"uint256"}],"name":"withdrawSnowflakeBalance","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[{"name":"resolver","type":"address"},{"name":"isSnowflake","type":"bool"},{"name":"withdrawAllowance","type":"uint256"},{"name":"extraData","type":"bytes"}],"name":"addResolver","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[{"name":"einFrom","type":"uint256"},{"name":"to","type":"address"},{"name":"amount","type":"uint256"}],"name":"withdrawSnowflakeBalanceFrom","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[{"name":"","type":"uint256"},{"name":"","type":"address"}],"name":"resolverAllowances","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"approvingAddress","type":"address"},{"name":"resolver","type":"address"},{"name":"isSnowflake","type":"bool"},{"name":"extraData","type":"bytes"},{"name":"v","type":"uint8"},{"name":"r","type":"bytes32"},{"name":"s","type":"bytes32"},{"name":"timestamp","type":"uint256"}],"name":"removeResolverFor","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[{"name":"newOwner","type":"address"}],"name":"transferOwnership","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[{"name":"approvingAddress","type":"address"},{"name":"providers","type":"address[]"},{"name":"v","type":"uint8"},{"name":"r","type":"bytes32"},{"name":"s","type":"bytes32"},{"name":"timestamp","type":"uint256"}],"name":"removeProvidersFor","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"inputs":[{"name":"_identityRegistryAddress","type":"address"},{"name":"_hydroTokenAddress","type":"address"}],"payable":false,"stateMutability":"nonpayable","type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"ein","type":"uint256"},{"indexed":false,"name":"newProviders","type":"address[]"},{"indexed":false,"name":"oldProviders","type":"address[]"},{"indexed":false,"name":"approvingAddress","type":"address"}],"name":"SnowflakeProvidersUpgraded","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"ein","type":"uint256"},{"indexed":true,"name":"resolver","type":"address"},{"indexed":false,"name":"withdrawAllowance","type":"uint256"}],"name":"SnowflakeResolverAdded","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"ein","type":"uint256"},{"indexed":true,"name":"resolver","type":"address"},{"indexed":false,"name":"withdrawAllowance","type":"uint256"}],"name":"SnowflakeResolverAllowanceChanged","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"ein","type":"uint256"},{"indexed":true,"name":"resolver","type":"address"}],"name":"SnowflakeResolverRemoved","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"from","type":"address"},{"indexed":true,"name":"einTo","type":"uint256"},{"indexed":false,"name":"amount","type":"uint256"}],"name":"SnowflakeDeposit","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"einFrom","type":"uint256"},{"indexed":true,"name":"einTo","type":"uint256"},{"indexed":false,"name":"amount","type":"uint256"}],"name":"SnowflakeTransfer","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"einFrom","type":"uint256"},{"indexed":true,"name":"to","type":"address"},{"indexed":false,"name":"amount","type":"uint256"}],"name":"SnowflakeWithdraw","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"resolverFrom","type":"address"}],"name":"SnowflakeTransferFrom","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"resolverFrom","type":"address"}],"name":"SnowflakeWithdrawFrom","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"resolverFrom","type":"address"},{"indexed":true,"name":"einTo","type":"uint256"}],"name":"SnowflakeTransferFromVia","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"resolverFrom","type":"address"},{"indexed":true,"name":"to","type":"address"}],"name":"SnowflakeWithdrawFromVia","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"resolverFrom","type":"address"},{"indexed":true,"name":"via","type":"address"},{"indexed":true,"name":"einTo","type":"uint256"},{"indexed":false,"name":"amount","type":"uint256"}],"name":"SnowflakeTransferToVia","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"resolverFrom","type":"address"},{"indexed":true,"name":"via","type":"address"},{"indexed":true,"name":"to","type":"address"},{"indexed":false,"name":"amount","type":"uint256"}],"name":"SnowflakeWithdrawToVia","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"ein","type":"uint256"},{"indexed":true,"name":"resolver","type":"address"},{"indexed":false,"name":"currentAllowance","type":"uint256"},{"indexed":false,"name":"requestedWithdraw","type":"uint256"}],"name":"SnowflakeInsufficientAllowance","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"previousOwner","type":"address"},{"indexed":true,"name":"newOwner","type":"address"}],"name":"OwnershipTransferred","type":"event"}]
};

export default snowflake;
