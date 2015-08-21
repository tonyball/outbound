'use strict'

angular.module('outboundApp')
  .directive 'sidebar', ->
  	{
  		restrict: 'E',
  		templateUrl: 'views/partials/sidebar.html'
  	}