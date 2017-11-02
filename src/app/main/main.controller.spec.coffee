describe 'controllers', () ->
  vm = undefined

  beforeEach module 'whitbread'

  beforeEach inject ($controller, webDevTec, toastr) ->
    spyOn(webDevTec, 'getTec').and.returnValue [{}, {}, {}, {}, {}]
    vm = $controller 'MainController'

  it 'should define animate class after delaying timeout ', inject ($timeout) ->
    $timeout.flush()
    expect(vm.classAnimation).toEqual 'rubberBand'

  it 'should define more than 5 tech stacks', () ->
    expect(angular.isArray(vm.techStacks)).toBeTruthy()
    expect(vm.techStacks.length == 5).toBeTruthy()
