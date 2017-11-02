describe 'directive navbar', () ->
  vm = undefined
  element = undefined
  timeInMs = undefined

  beforeEach module 'whitbreadTest'

  beforeEach inject ($compile, $rootScope) ->
    element = angular.element "<acme-navbar></acme-navbar>"

    $compile(element) $rootScope.$new()
    $rootScope.$digest()

  it 'should be compiled', () ->
    expect(element.html()).not.toEqual null
