'use strict'

angular.module('outboundApp')
  .controller 'StudentactivityCtrl', ($scope) ->
  	angular.element('.collapsible').collapsible accordion: false
  	angular.element('.classroom-content').hide()
  	angular.element('#'+angular.element('select').val()).show()

  	angular.element('.btn-flat').on 'click', ->
  		angular.element('.btn-flat').removeClass 'active'
  		angular.element(this).addClass 'active'
  		filterContent '.' + angular.element(this).attr('data-value')
  		return false

  	angular.element('select').on 'change', ->
  		angular.element('.classroom-content').hide()
  		angular.element('#' + angular.element(this).val()).show()
  		return false

  	filterContent = (subject) ->
  		angular.element('.content').hide()
  		angular.element(subject).show()
  		return false