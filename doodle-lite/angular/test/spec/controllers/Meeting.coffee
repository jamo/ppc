'use strict'

describe 'Controller: MeetingCtrl', () ->

  # load the controller's module
  beforeEach module 'angularApp'

  MeetingCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    MeetingCtrl = $controller 'MeetingCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
