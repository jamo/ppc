'use strict'

angular.module('angularApp')
  .controller 'MeetingDetailsCtrl', ($scope, $http, $routeParams) ->
    $http.get("http://127.0.0.1:3000/meetings/#{$routeParams.meetingId}")
      .success (data) ->
        $scope.meeting = data;
