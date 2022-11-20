# abi.encode

abi.encode(): The solidity built-in function abi.encode enables to encode any Solidity types into raw bytes, that can be interpreted directly by the EVM.

Most of the static types in Solidity like address , uint256 or bytes32 are encoded as 32 bytes words.

The most interesting comes with non elementary types, like string , or arrays. Meaning such types are encoded in a specific manner, specified by the Solidity ABI.

1st (32 bytes) word = offset → indicates at which bytes index the string starts. Here 0x20 (in hex) = 32 (in decimals). If you count 32 from the beginning (= index 32), you will reach the starting point of where the actual encoded string starts.

2nd (32 bytes) word = string length → in the case of the string, this indicates how many characters (including whitespaces) are included in the string. So simply the “string.length “

3rd (32 bytes) word = the actual utf8 encoded string → each individual bytes corresponds to hex notation of a letter / character encoded in utf8. If you search each individual bytes from 536f6c6964697479 inside an utf8 table, you will be able to decode the string. For instance, 53 corresponds to uppercase S , 6f corresponds to lowercase o , 6c corresponds to lowercase l , etc…

```bash
// Split in words 32 bytes long
0x0000000000000000000000000000000000000000000000000000000000000020
  0000000000000000000000000000000000000000000000000000000000000004
  536f6c6964697479000000000000000000000000000000000000000000000000
```

# abe.decode

abi.decode(): The solidity built-in function abi.decode enables to decode any Solidity types from raw bytes to acutual data.
