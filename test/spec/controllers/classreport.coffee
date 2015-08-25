'use strict'

describe 'Controller: ClassreportCtrl', ->

  # load the controller's module
  beforeEach module 'outboundApp'

  ClassreportCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ClassreportCtrl = $controller 'ClassreportCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(scope.awesomeThings.length).toBe 3
