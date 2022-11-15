# Value Types

The following types are also called value types because variables of these types will always be passed by value, meaning these values are stored in memory and they are copied from memory while being passed into a function.

# Pass By Value

Pass by value means, a copy of the actual parameter's value is made in memory. It does not change the original value but the copy of it.

```bash
function square(x) {
    x = x * x;
    return x;
}

let y = 10;
let result = square(y);

console.log(result); // 100
console.log(y); // 10 -- no change
```
