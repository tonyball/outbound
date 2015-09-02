'use strict'

angular.module('outboundApp')
  .controller 'SubjectsCtrl', ($scope) ->
  	angular.element('.btn-flat').on 'click', ->
  		angular.element('.btn-flat').removeClass 'active'
  		angular.element(this).addClass 'active'
  		filterSubject '.' + angular.element(this).attr('data-value')
  		return false

  	angular.element('select').on 'change', ->
  		filterSubject '.' + angular.element(this).val()
  		return false

  	filterSubject = (subject) ->
  		angular.element('.classroom-card').hide()
  		angular.element(subject).show()
  		return false