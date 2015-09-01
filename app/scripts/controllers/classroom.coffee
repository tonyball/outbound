'use strict'

angular.module('outboundApp')
  .controller 'ClassroomCtrl', ($scope) ->
  	angular.element('.collapsible').collapsible({ accordion : false })
  	angular.element('.test-container-action, .practice-container, .test-container').hide()
  	angular.element('.content-link').first().addClass 'active'
  	angular.element('.content-title').text $('.content-link').first().attr('data-title')

  	angular.element('.content-link').on 'click', ->
      angular.element('.content-link').removeClass 'active'
      angular.element(this).addClass 'active'
      angular.element('.content-link').find('.secondary-content').html('')
      angular.element(this).find('.secondary-content').html('<i class="material-icons green-text">play_arrow</i>')
      switchContent '.' + $(this).attr('data-type') + '-container', $(this).attr('data-type'), $(this).attr('data-href'), $(this).attr('data-title')
  		return false

  	switchContent = (content, type, url, title) ->
  		angular.element('.content-container, .action-container').hide()
  		angular.element(content + ',' + content + '-action').show()
  		angular.element('.content-title').text title
  		if type == 'video'
  			angular.element('#video-item').attr 'src', 'videos/' + url
  		else if type == 'practice'
  			angular.element('#practice-item').attr 'src', 'images/' + url
  		else
  			angular.element('#test-item').attr 'data', 'pdf/' + url
  		return false