'use strict'

angular.module('angularApp')
  .controller 'MeetingListCtrl', ($scope, $http) ->
    $http.get("http://127.0.0.1:3000/meetings.json")
      .success (data) ->
        $scope.meetings = data
      .error ->
        alert "There was an error while loading data"

