angular.module 'whitbread'
  .directive 'acmeNavbar', ->

    NavbarController = () ->
      'ngInject'
      vm = this

      return

    directive =
      restrict: 'E'
      templateUrl: 'app/components/navbar/navbar.html'
      controller: NavbarController
      controllerAs: 'vm'
      bindToController: true
