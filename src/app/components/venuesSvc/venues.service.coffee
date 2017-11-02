angular.module 'whitbread'
  .service 'venuesSvc', ($http, toastr, rootUrl, filter, amount, loc, query, client_id, client_secret) ->
    'ngInject'
    
    _self = @

    @getPopularVenues = (city, n)->
      promise = $http.get(rootUrl + filter + city + '&' + amount + n + '&' + client_id + '&' + client_secret + '&' + loc + '&' + query).catch(
        (error) ->
          toastr.error('There was an error in your request, please try changing the name of the city')
      )

    return
