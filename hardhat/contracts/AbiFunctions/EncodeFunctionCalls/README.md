# Encode Function Calls

The functions abi.encodeWithSignature(...) and abi.encodeWithSelector(...) can be used in Solidity to prepare payloads in raw bytes for external contract calls. Such payloads can then be passed as parameters to the low level Solidity .call(...) , .delegatecall(...) and .staticcall(...) functions.

These two functions will encode the passed arguments, starting from the second parameter.

# abi.encodeWithSelector

```bash
abi.encodeWithSelector(bytes4 selector, ...) returns (bytes memory)
```

With this function, you must provide the bytes4 function selector of the function you want to call. The selector consists of the first four bytes of the Keccak256-hash of the function signature.
