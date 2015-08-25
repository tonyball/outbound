'use strict'

angular.module('outboundApp')
  .controller 'MainCtrl', ($scope, $location) ->
    $scope.login = true
    if ($scope.login)
    	$location.path('/dashboard')

