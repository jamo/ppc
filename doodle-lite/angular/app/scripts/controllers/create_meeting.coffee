'use strict'

angular.module('angularApp')
  .controller 'CreateMeetingCtrl', ($scope, $http, $route) ->
    $scope.formData = { title: "", description: "", meeting_times: [] }
    $scope.addTime = ->
      $scope.formData.meeting_times.push { "date": $scope.formData.date, "time": $scope.formData.time }
      console.log JSON.stringify($scope.formData)

    $scope.submitMeeting = ->
      $http.post('http://127.0.0.1:3000/meetings.json', $scope.formData)
