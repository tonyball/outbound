'use strict'

describe 'Controller: StudentactivityCtrl', ->

  # load the controller's module
  beforeEach module 'outboundApp'

  StudentactivityCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    StudentactivityCtrl = $controller 'StudentactivityCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(scope.awesomeThings.length).toBe 3
