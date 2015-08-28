'use strict'

angular.module('outboundApp')
  .controller 'TakeexamCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
    $scope.datetime = new Date()
