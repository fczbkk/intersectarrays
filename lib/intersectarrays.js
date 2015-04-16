/*
intersectArrays, v0.1.0
by Riki Fridrich <riki@fczbkk.com> (https://github.com/fczbkk)
https://github.com/fczbkk/intersectarrays
*/
(function() {
    var intersectArrays, isArray, root;
    isArray = function(obj) {
        return (obj != null ? obj.constructor.toString().indexOf("Array") : void 0) !== -1;
    };
    intersectArrays = function() {
        var count, i, item, j, key, len, len1, result, values;
        values = {};
        for (i = 0, len = arguments.length; i < len; i++) {
            item = arguments[i];
            if (!isArray(item)) {
                return [];
            }
            for (j = 0, len1 = item.length; j < len1; j++) {
                key = item[j];
                if (values[key] == null) {
                    values[key] = 0;
                }
                values[key]++;
            }
        }
        result = [];
        for (key in values) {
            count = values[key];
            if (count >= arguments.length) {
                result.push(key);
            }
        }
        return result;
    };
    root = typeof exports === "object" ? exports : this;
    root.intersectArrays = intersectArrays;
}).call(this);