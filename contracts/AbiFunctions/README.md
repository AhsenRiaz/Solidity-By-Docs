# ABI Encoding and Decoding Functions

A smart contract is basically made up of state variables and functions. Some functions are private and can only be accessed from within the contract, however many functions are public and can be accessed from outside the contract. That is, applications (and people) can send data to the contract and retrieve data from the contract.

To send data to the contract, we need to send it in a way that the contract can read it. That is, they need to be encoded. The rule on how to perform such encoding is defined by the implementation of the Ethereum Virtual Machine (EVM).

The Contract Application Binary Interface (ABI) is the standard way to interact with contracts in the Ethereum ecosystem, both from outside the blockchain and for contract-to-contract interaction. Data is encoded according to its type

abi.encode encode its parameters using the ABI specs. The ABI was designed to make calls to contracts. Parameters are padded to 32 bytes. If you are making calls to a contract you likely have to use abi.encode

abi.encodePacked encode its parameters using the minimal space required by the type. Encoding an uint8 it will use 1 byte. It is used when you want to save some space, and not calling a contract.

abi.encodeWithSignature same as encode but with the function signature as first parameter. Use when the signature is known and don't want to calculate the selector.

abi.encodeWithSelector same as encode but selector is the first parameter. It almost equal to encodeWithSignature, use whatever fits best.
