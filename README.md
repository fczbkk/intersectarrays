# intersectArrays

Creates array containing values that are present in all provided arrays.

## How to use

```javascript
// returns array of values, that are present in all provided arrays
intersectArrays(['a', 'b'], ['a', 'b', 'c']);  // -> ['a', 'b']

// you can provide any number of arrays
intersectArrays(['a', 'b'], ['a', 'c'], ['a', 'd']);  // -> ['a']

// resulting array contains unique values, no duplicates
intersectArrays(['a', 'b', 'a'], ['a', 'b', 'b']);  // -> ['a', 'b']

// returns an empty array when no parameters are provided
intersectArrays();  // -> []

// returns an empty array when any of the parameters is not an array
intersectArrays(['a'], 'a');  // -> []
```

## Bug reports, feature requests and contact

If you found any bugs, if you have feature requests or any questions, please, either [file an issue at GitHub](https://github.com/fczbkk/intersectarrays/issues) or send me an e-mail at [riki@fczbkk.com](mailto:riki@fczbkk.com).


## License

intersectArrays is published under the [MIT license](https://github.com/fczbkk/intersectarrays/blob/master/LICENSE).
