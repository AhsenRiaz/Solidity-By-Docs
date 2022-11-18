# Public:

All can access

# External

Cannot be accessed internally, only externally

# Internal

Only this contract and contracts deriving from it can access

# Private

Can be accessed only from this contract

# Gas Optimization Tips

As for best practices, you should use external if you expect that the function will only ever be called externally, and use public if you need to call the function internally. Using public function takes more gas because the argument passed to the function are copied in memory but external function takes arguments from the calldata. It does not create copy of arguments.

You will essentially see performance benefits with external any time you are only calling a function externally, and passing in a lot of calldata (eg, large arrays).
