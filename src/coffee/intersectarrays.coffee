isArray = (obj) ->
  obj?.constructor.toString().indexOf('Array') isnt -1

intersectArrays = ->
  # keep track of all values in all arrays and counts their occurences
  values = {}

  for item in arguments

    # if any of the arguments is not an array, return empty array immediately
    return [] unless isArray item

    # keep track of values used in this item, make sure they are unique
    item_values = {}

    for key in item
      unless item_values[key]
        values[key] ?= 0
        values[key]++
        item_values[key] = true

  # construct resulting array that consists only of values used in all arrays
  result = []
  for key, count of values
    if count >= arguments.length
      result.push key

  result


# Expose object to the global namespace.

# Node.js
if module?.exports
  module.exports = intersectArrays

# AMD / RequireJS
else if define?.amd
  define [], -> intersectArrays

# SCRIPT tag in browser
else
  this.intersectArrays = intersectArrays
