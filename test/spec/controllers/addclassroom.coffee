'use strict'

describe 'Controller: AddclassroomCtrl', ->

  # load the controller's module
  beforeEach module 'outboundApp'

  AddclassroomCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    AddclassroomCtrl = $controller 'AddclassroomCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(scope.awesomeThings.length).toBe 3
