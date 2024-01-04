- Usage
This Ethereum ERC-20 token, named "AstanaITU Anelya Token," is designed to provide basic functionalities for managing token balances and includes additional features for retrieving transaction information.

Prerequisites

Before you start, make sure you have the following:

Remix IDE or your preferred Ethereum development environment. A web3-enabled wallet like Metamask.

- Deployment
Open Remix: Navigate to Remix in your web browser.

Load Token Contract: Click on the file explorer icon. Upload or paste the code from the ERC-20 token contract (e.g., AstanaITUAnelyaToken.sol).

Compile and Deploy: Switch to the "Solidity Compiler" tab and compile the contract. Move to the "Deploy & Run Transactions" tab. Deploy the contract using your preferred environment (e.g., JavaScript VM or Injected Web3). Confirm the deployment transaction using your connected wallet (e.g., Metamask).

- Functions
This ERC-20 token contract offers the following functions:

transfer: Transfers tokens from the sender's account to a specified recipient.

approve: Allows a spender to withdraw tokens from the sender's account, up to the approved amount.

transferFrom: Transfers tokens from one address to another, with the approval of the token owner.

getLatestTransactionTimestamp: Returns the block timestamp of the latest transaction in a human-readable format.

getTransactionSender: Returns the address of the transaction sender.

getTransactionReceiver: Returns the address of the transaction receiver.

-Demo screenshots  

-Examples
Below are examples illustrating the usage of some functions:

Example: Transfer Tokens Use the transfer function to send tokens to another address.

Example: Approve Spending Utilize the approve function to grant permission for another address to spend tokens.

Example: Transfer From Use the transferFrom function to execute a transfer on behalf of the token owner.

Example: Retrieve Timestamp Call the getLatestTransactionTimestamp function to retrieve the timestamp of the latest transaction.

Example: Retrieve Sender's Address Execute the getTransactionSender function to obtain the address of the transaction sender.

Example: Retrieve Receiver's Address Call the getTransactionReceiver function to get the address of the transaction receiver.
