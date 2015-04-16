/*
intersectArrays, v1.1.0
by Riki Fridrich <riki@fczbkk.com> (https://github.com/fczbkk)
https://github.com/fczbkk/intersectarrays
*/
(function() {
    var intersectArrays, isArray;
    isArray = function(obj) {
        return (obj != null ? obj.constructor.toString().indexOf("Array") : void 0) !== -1;
    };
    intersectArrays = function() {
        var count, i, item, item_values, j, key, len, len1, result, values;
        values = {};
        for (i = 0, len = arguments.length; i < len; i++) {
            item = arguments[i];
            if (!isArray(item)) {
                return [];
            }
            item_values = {};
            for (j = 0, len1 = item.length; j < len1; j++) {
                key = item[j];
                if (!item_values[key]) {
                    if (values[key] == null) {
                        values[key] = 0;
                    }
                    values[key]++;
                    item_values[key] = true;
                }
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
    if (typeof module !== "undefined" && module !== null ? module.exports : void 0) {
        module.exports = intersectArrays;
    } else if (typeof define !== "undefined" && define !== null ? define.amd : void 0) {
        define([], function() {
            return intersectArrays;
        });
    } else {
        this.intersectArrays = intersectArrays;
    }
}).call(this);