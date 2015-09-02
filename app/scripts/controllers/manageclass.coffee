'use strict'

angular.module('outboundApp')
  .controller 'ManageclassCtrl', ($scope) ->
  	angular.element('.tooltipped').tooltip({delay: 50})
  	angular.element('.classroom-content').hide()
  	angular.element('#'+angular.element('select').val()).show()

  	angular.element('select').on 'change', ->
  		angular.element('.classroom-content').hide()
  		angular.element('#' + angular.element(this).val()).show()
  		return false