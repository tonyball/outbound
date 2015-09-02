'use strict'

angular.module('outboundApp')
  .controller 'TakeexamCtrl', ($scope) ->
    $scope.datetime = new Date()
    angular.element('.modal-trigger').leanModal()
    angular.element('.tooltipped').tooltip delay: 50
    angular.element('#exam-modal').openModal dismissible: false
    clock = angular.element('.exam-clock').FlipClock(
    	autoStart: false
    	clockFace: 'MinuteCounter')
    clock.setTime 7200
    clock.setCountdown true

    angular.element('.start-exam').click ->
    	clock.start()
    	return false

    angular.element('.finish-exam').click ->
    	clock.stop()
    	return false
