isArray = (obj) ->
  obj?.constructor.toString().indexOf('Array') isnt -1

intersectArrays = ->
  values = {}

  for item in arguments
    return [] unless isArray item

    checkedValues = {}
    for key in item
      if !checkedValues[key]
        values[key] ?= 0
        values[key]++
        checkedValues[key] = true

  result = []
  for key, count of values
    if count >= arguments.length
      result.push key

  result


# Expose object to the global namespace.
root = if typeof exports is 'object' then exports else this
root.intersectArrays = intersectArrays
