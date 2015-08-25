'use strict'

describe 'Controller: ProfileUseridCtrl', ->

  # load the controller's module
  beforeEach module 'outboundApp'

  ProfileUseridCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ProfileUseridCtrl = $controller 'ProfileUseridCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(scope.awesomeThings.length).toBe 3
