'use strict';

describe('Controller: CreatemeetingcontrollerCtrl', function () {

  // load the controller's module
  beforeEach(module('doodleLiteApp'));

  var CreatemeetingcontrollerCtrl,
    scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    CreatemeetingcontrollerCtrl = $controller('CreatemeetingcontrollerCtrl', {
      $scope: scope
    });
  }));

  it('should attach a list of awesomeThings to the scope', function () {
    expect(scope.awesomeThings.length).toBe(3);
  });
});
