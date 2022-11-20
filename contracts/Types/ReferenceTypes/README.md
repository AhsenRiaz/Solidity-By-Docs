# Reference Types

Solidity reference types differ from value types in that they do not store values directly on their own. Instead, reference types store (or “reference”) the address of the data’s location and do not directly share the data.

Reference data types must be handled cautiously since they deal with storage locations. Data location affects the amount of gas used in a transaction and therefore can negatively impact smart contract development performance.

When using reference types, reference variables point a user to the location of value storage, and these can take up more than 32B of memory in size.

Two separate variables can refer to the exact location, and any change in one variable can affect the other. Several variables that point to the same address can be used to effect a change in a reference data type.

There are several reference data types in Solidity: fixed-sized arrays, dynamic-sized arrays, array members, byte arrays, string arrays, structs, and mapping.
