'use strict'

angular.module('outboundApp')
  .controller 'DashboardCtrl', ($scope, $rootScope) ->  
  	$scope.search_query = ""
  	angular.element('.modal-trigger').leanModal()
  	angular.element('.teaching').hide()
  	angular.element('.tooltipped').tooltip({delay: 50})	
  	$scope.switchRole = ->
  		angular.element('.teach-btn').toggleClass('btn green btn-flat')
  		angular.element('.learn-btn').toggleClass('btn green btn-flat')
  		angular.element('.learning').toggle().toggleClass 'bounceInDown bounceOutUp'
  		angular.element('.teaching').toggle().toggleClass 'bounceInDown bounceOutUp'
  		return false