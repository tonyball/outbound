'use strict'

describe 'Controller: ClassroomCtrl', ->

  # load the controller's module
  beforeEach module 'outboundApp'

  ClassroomCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ClassroomCtrl = $controller 'ClassroomCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(scope.awesomeThings.length).toBe 3
