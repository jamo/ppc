'use strict'

angular.module('angularApp')
  .controller 'MeetingDetailsCtrl', ($scope, $http, $routeParams, $route) ->
    $scope.formContent = { selected: [], nickname: "" }
    $scope.toggleSelection = (meetingId) ->
      idx = $scope.formContent.selected.indexOf(meetingId)
      if idx > -1
        $scope.formContent.selected.splice idx, 1
      else
        $scope.formContent.selected.push meetingId

    $scope.interpolate = (userAnswers) ->
      interpolated = []
      for (i = 0; i < $scope.meeting.meeting_times; i++)
        if userAnswers.indexOf $scope.meeting.meeting_times[i]  > -1
          interpolated[i] = 1
        else
          interpolated[i] = 0

    $scope.submitAnswer = ->
      $http.post "http://127.0.0.1:3000/meetings/#{$routeParams.meetingId}/answers.json", $scope.formContent
      $route.reload()

    $http.get("http://127.0.0.1:3000/meetings/#{$routeParams.meetingId}")
      .success (data) ->
        $scope.meeting = data.meeting;
        $scope.answers = data.answers;
