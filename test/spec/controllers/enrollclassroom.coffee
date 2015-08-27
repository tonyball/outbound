'use strict'

describe 'Controller: EnrollclassroomCtrl', ->

  # load the controller's module
  beforeEach module 'outboundApp'

  EnrollclassroomCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    EnrollclassroomCtrl = $controller 'EnrollclassroomCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(scope.awesomeThings.length).toBe 3
