'use strict'

describe 'Controller: CreatemeetingCtrl', () ->

  # load the controller's module
  beforeEach module 'angularApp'

  CreatemeetingCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    CreatemeetingCtrl = $controller 'CreatemeetingCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
