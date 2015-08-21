'use strict'

describe 'Directive: dropdownContent', ->

  # load the directive's module
  beforeEach module 'outboundApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<dropdown-content></dropdown-content>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the dropdownContent directive'
