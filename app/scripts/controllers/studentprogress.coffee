'use strict'

angular.module('outboundApp')
  .controller 'StudentprogressCtrl', ($scope) ->
  	angular.element('.tooltipped').tooltip delay: 50
  	angular.element('.stdname').first().addClass 'selected'
  	angular.element('.stdDetailCard').hide()
  	angular.element('.stdDetailCard').first().show()
  	angular.element('.content').hide()
  	angular.element('.recent-activity').show()
  	angular.element('.classroom-content').hide()
  	angular.element('#'+angular.element('select').val()).show()

  	angular.element('.stdname').on 'click', ->
  		angular.element('.stdname').removeClass 'selected'
  		angular.element(this).addClass 'selected'
  		switchStudent '#' + angular.element(this).attr('data-username')
  		return false

  	angular.element('select').on 'change', ->
  		angular.element('.classroom-content').hide()
  		angular.element('#' + angular.element(this).val()).show()
  		return false

  	angular.element('.select-student').on 'change', ->
  		switchStudent '#' + angular.element(this).val()
  		return false

  	angular.element('.btn-flat').on 'click', ->
  		angular.element('.btn-flat').removeClass 'active'
  		angular.element(this).addClass 'active'
  		filterContent '.' + angular.element(this).attr('data-value')
  		return false

  	filterContent = (subject) ->
  		angular.element('.content').hide()
  		angular.element(subject).show()
  		return false

  	switchStudent = (student) ->
  		angular.element('.stdDetailCard, .content').hide()
  		angular.element(student + ',.recent-activity').show()
  		angular.element('.btn-flat').removeClass 'active'
  		angular.element('.recent-activity-btn').addClass 'active'
  		return false