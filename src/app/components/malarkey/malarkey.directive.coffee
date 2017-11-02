angular.module 'whitbread'
  .directive 'acmeMalarkey', ->

    MalarkeyController = () ->
      'ngInject'
      vm = this

      vm.statement = ['With ♥','Thanks for the opportunity of showing my skills']
      return

    linkFunc = (scope, el, attr, vm) ->
      typist = malarkey(el[0],
        typeSpeed: 40
        deleteSpeed: 40
        pauseDelay: 800
        loop: true
        postfix: ' ')
      el.addClass 'acme-malarkey'
      angular.forEach scope.extraValues, (value) ->
        typist.type(value).pause().delete()
        return
      watcher = scope.$watch('vm.statement', ->
        angular.forEach vm.statement, (sentence) ->
          typist.type(sentence).pause().delete()
          return
        return
      )
      scope.$on '$destroy', ->
        watcher()
        return
      return

    directive =
      restrict: 'E'
      scope: extraValues: '='
      template: '&nbsp;'
      link: linkFunc
      controller: MalarkeyController
      controllerAs: 'vm'
