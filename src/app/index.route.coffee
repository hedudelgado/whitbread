angular.module 'whitbread'
  .config ($routeProvider) ->
    'ngInject'
    $routeProvider
      .when '/',
        templateUrl: 'app/main/main.html'
        controller: 'MainController'
        controllerAs: 'main'
      .when '/venues',
        templateUrl: 'app/venues/venues.html'
        controller: 'VenuesController'
        controllerAs: 'main'
      .otherwise
        redirectTo: '/'
