# abi.encodePacked

Solidity offers a non standard encoding mode for data, via the built-in function abi.encodePacked(...). This enables to encode data in raw bytes, without following the conventions specified by the ABI.

The following ABI rules are dropped when doing packed encoding in Solidity:

- Dynamic types (eg: strings, arrays, …) are encoded as they are, without offset or length.

- Static types shorter than 32 bytes (eg: uint8, bytes4, etc…) are not zero padded.

abi.encode("Solidity") returns this:

```bash
// Split in words 32 bytes long
0x0000000000000000000000000000000000000000000000000000000000000020
  0000000000000000000000000000000000000000000000000000000000000004
  536f6c6964697479000000000000000000000000000000000000000000000000
```

abi.encodePacked("Solidity") returns this:

```bash
0x536f6c6964697479
```
