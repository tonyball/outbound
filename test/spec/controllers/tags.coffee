'use strict'

describe 'Controller: TagsCtrl', ->

  # load the controller's module
  beforeEach module 'outboundApp'

  TagsCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    TagsCtrl = $controller 'TagsCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(scope.awesomeThings.length).toBe 3
