'use strict'

angular.module('outboundApp')
  .controller 'DashboardCtrl', ($scope, $rootScope, $http) ->
    $scope.search_query = ""
    $scope.user_learning_classes = []
    $scope.user_teaching_classes = []
    $scope.user = {}

    $http.get('json/users/itouchz.json').success (user_data) ->
      $scope.user = user_data
      for tc in $scope.user.teaching_classes
        $http.get('json/classrooms/'+tc+'.json').success (class_data) ->
          $scope.user_teaching_classes.push class_data
      for lc in $scope.user.learning_classes
        $http.get('json/classrooms/'+lc+'.json').success (class_data) ->
          $scope.user_learning_classes.push class_data

    # DOM Manipulation
    angular.element('.modal-trigger').leanModal()
    angular.element('.teaching').hide()
    angular.element('.tooltipped').tooltip({delay: 50})	

    $scope.switchRole = ->
      angular.element('.teach-btn, .learn-btn').toggleClass('btn green btn-flat')
      angular.element('.learning, .teaching').toggle()
      return false