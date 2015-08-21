'use strict'

angular.module('outboundApp')
  .directive 'navigationBar', ->
  	{
  		restrict: 'E',
  		templateUrl: 'views/partials/navigation-bar.html'
  	}