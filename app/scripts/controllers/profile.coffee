'use strict'

angular.module('outboundApp')
  .controller 'ProfileCtrl', ($scope) ->
  	angular.element('.card-summary,.recent-activity,.learning-progress').hide()
  	angular.element('.tooltipped').tooltip delay: 1
  	angular.element('.modal-trigger').leanModal()

  	angular.element('.action-btn').on 'click', ->
  		angular.element('.action-btn').addClass 'black-text btn-flat'
  		angular.element('.action-btn').removeClass 'white-text btn green'
  		angular.element(this).removeClass 'black-text btn-flat'
  		angular.element(this).addClass 'white-text btn green'
  		switchCard '.' + angular.element(this).attr('data-value')
  		return false

  	angular.element('select').on 'change', ->
  		switchCard '.' + angular.element(this).val()
  		return false

  	switchCard = (card) ->
  		angular.element('.data-card').removeClass 'fadeIn'
  		angular.element('.data-card').addClass('fadeOut').hide()
  		angular.element(card).removeClass 'fadeOut'
  		angular.element(card).addClass('fadeIn').show()
  		return false