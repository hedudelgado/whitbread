describe 'directive malarkey', () ->
  vm = undefined
  element = element

  beforeEach module 'whitbread'

  beforeEach inject ($compile, $rootScope, $q) ->
    element = angular.element '<acme-malarkey></acme-malarkey>'

    $compile(element) $rootScope.$new()
    $rootScope.$digest()
    vm = element.isolateScope().vm

  it 'should be compiled', () ->
    expect(element.html()).not.toEqual null

  it 'should have isolate scope object with instanciate members', () ->
    expect(vm.statement).toEqual jasmine.any Object

    expect(vm.statement).toEqual jasmine.any Array
    expect(vm.statement.length).toEqual 2
