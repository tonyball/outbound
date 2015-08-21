'use strict'

angular.module('outboundApp')
  .controller 'SidebarCtrl', ($scope, $location) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]

    $scope.isActive = (viewLocation) ->
   		location = $location.path().split '/'
   		viewLocation == "/"+location[1]