'use strict'

angular.module('angularApp', [])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/meetings',
        templateUrl: 'views/meetings.html',
        controller: 'MeetingListCtrl'
      .when '/meetings/:meetingId',
        templateUrl: 'views/meeting.html',
        controller: 'MeetingDetailsCtrl'
      .otherwise
        redirectTo: '/'
