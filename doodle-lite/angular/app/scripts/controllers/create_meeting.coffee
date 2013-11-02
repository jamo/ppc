'use strict'

angular.module('angularApp')
  .controller 'CreateMeetingCtrl', ($scope, $http, $route) ->
    $scope.formData = { title: "", description: "", meeting_times: "" }
    $scope.submitMeeting = ->
      $http.post('http://127.0.0.1:3000/meetings/create', $scope.formData)
