describe 'intersectArrays', ->

  it 'should return empty array if no params are provided', ->
    result = intersectArrays()
    expect(result).toEqual []

  it 'should return empty array if some param is not array', ->
    result = intersectArrays 'aaa'
    expect(result).toEqual []

  it 'should return single array unchanged', ->
    result = intersectArrays ['aaa']
    expect(result).toEqual ['aaa']

  it 'should return empty array if no intersect is found', ->
    result = intersectArrays ['a'], ['b']
    expect(result).toEqual []

  it 'should return intersect values from all arrays', ->
    result = intersectArrays ['a', 'b'], ['b', 'c'], ['a', 'b', 'c']
    expect(result).toEqual ['b']

  it 'should return unique values', ->
    result = intersectArrays ['a', 'b'], ['a', 'b', 'c'], ['a', 'b', 'a']
    expect(result.length).toEqual 2

  it 'should work with duplicated values', ->
    result = intersectArrays ['a', 'b', 'a'], ['b', 'c'], ['a', 'b']
    expect(result).toEqual ['b']
