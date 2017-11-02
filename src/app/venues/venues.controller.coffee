angular.module 'whitbread'
  .controller 'VenuesController', (venuesSvc) ->
    'ngInject'
    vm = this
    
    fetchVenues = () ->
      vm.loading = true
      vm.displayNoResults = false
      venuesSvc.getPopularVenues(vm.city, vm.number).then((result) ->
        vm.loading = false
        if result.data
          vm.venues = result.data.response.venues
          vm.displayNoResults = vm.venues.length == 0
        else
          vm.displayNoResults = true
      )

    vm.loading = false
    vm.displayNoResults = false
    vm.numbers = [10,20,50,100]
    vm.fetchVenues = fetchVenues

    return
