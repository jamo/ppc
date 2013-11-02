'use strict'

angular.module('angularApp')
  .controller 'MeetingDetailsCtrl', ($scope, $http, $routeParams) ->
    $scope.formContent = { selected: [], nickname: "" }
    $scope.toggleSelection = (meetingId) ->
      idx = $scope.formContent.selected.indexOf(meetingId)
      if idx > -1
        $scope.formContent.selected.splice idx, 1
      else
        $scope.formContent.selected.push meetingId

    $scope.submitAnswer = ->
      $http.post "http://127.0.0.1:3000/meetings/#{$routeParams.meetingId}/answers.json", $scope.formContent

    $http.get("http://127.0.0.1:3000/meetings/#{$routeParams.meetingId}")
      .success (data) ->
        $scope.meeting = data;
