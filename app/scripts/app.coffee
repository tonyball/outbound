'use strict'

angular
  .module('outboundApp', [
    'ngCookies',
    'ngResource',
    'ngSanitize',
    'ngRoute'
])
  .config ($routeProvider, $locationProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/dashboard',
        templateUrl: 'views/dashboard.html'
        controller: 'DashboardCtrl'
      .when '/profile/:userid',
        templateUrl: 'views/profile.html'
        controller: 'ProfileCtrl'
      .when '/classroom/:classcode',
        templateUrl: 'views/classroom.html'
        controller: 'ClassroomCtrl'
      .when '/cards',
        templateUrl: 'views/cards.html'
        controller: 'CardsCtrl'
      .when '/exams',
        templateUrl: 'views/exams.html'
        controller: 'ExamsCtrl'
      .when '/takeexam/:examcode',
        templateUrl: 'views/takeexam.html'
        controller: 'TakeexamCtrl'
      .when '/manageclass/:classcode',
        templateUrl: 'views/manageclass.html'
        controller: 'ManageclassCtrl'
      .when '/classreport/:classcode',
        templateUrl: 'views/classreport.html'
        controller: 'ClassreportCtrl'
      .when '/studentactivity/:classcode',
        templateUrl: 'views/studentactivity.html'
        controller: 'StudentactivityCtrl'
      .when '/studentprogress/:classcode',
        templateUrl: 'views/studentprogress.html'
        controller: 'StudentprogressCtrl'
      .when '/signin',
        templateUrl: 'views/signin.html'
        controller: 'SigninCtrl'
      .when '/signup',
        templateUrl: 'views/signup.html'
        controller: 'SignupCtrl'
      .when '/subjects',
        templateUrl: 'views/subjects.html'
        controller: 'SubjectsCtrl'
      .when '/notifications',
        templateUrl: 'views/notifications.html'
        controller: 'NotificationsCtrl'
      .otherwise
        redirectTo: '/'