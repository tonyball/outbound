'use strict'

angular.module('outboundApp')
  .controller 'MainCtrl', ($scope, $location) ->
    $scope.login = false
    if ($scope.login)
    	$location.path('/dashboard')

