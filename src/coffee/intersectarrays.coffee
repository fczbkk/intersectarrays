isArray = (obj) ->
  obj?.constructor.toString().indexOf('Array') isnt -1

intersectArrays = ->
  values = {}

  for item in arguments
    return [] unless isArray item

    for key in item
      values[key] ?= 0
      values[key]++

  result = []
  for key, count of values
    if count >= arguments.length
      result.push key

  result


# Expose object to the global namespace.
root = if typeof exports is 'object' then exports else this
root.intersectArrays = intersectArrays
