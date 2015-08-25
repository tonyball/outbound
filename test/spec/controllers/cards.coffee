'use strict'

describe 'Controller: CardsCtrl', ->

  # load the controller's module
  beforeEach module 'outboundApp'

  CardsCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    CardsCtrl = $controller 'CardsCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(scope.awesomeThings.length).toBe 3
