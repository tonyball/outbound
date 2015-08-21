'use strict'

angular.module('outboundApp')
  .directive 'dropdownContent', ->
  	{
  		restrict: 'E',
  		templateUrl: 'views/partials/dropdown-content.html'
  	}