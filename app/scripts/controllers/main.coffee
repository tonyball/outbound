'use strict'

angular.module('outboundApp')
  .controller 'MainCtrl', ($scope, $location) ->
    $scope.login = true
    if (login)
    	$location.path('/dashboard')

