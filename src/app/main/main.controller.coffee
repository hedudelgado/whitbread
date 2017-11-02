angular.module 'whitbread'
  .controller 'MainController', ($timeout, $location, webDevTec, toastr) ->
    'ngInject'
    vm = this
    activate = ->
      getWebDevTec()
      $timeout (->
        vm.classAnimation = 'rubberBand'
        return
      ), 4000
      return

    goToVenues = ->
      $location.path('/venues')
      vm.classAnimation = ''
      return

    getWebDevTec = ->
      vm.techStacks = webDevTec.getTec()
      angular.forEach vm.techStacks, (stack) ->
        stack.rank = Math.random()
        return
      return

    vm.techStacks = []
    vm.classAnimation = ''
    vm.goToVenues = goToVenues
    activate()
    return
