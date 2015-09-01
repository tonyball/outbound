'use strict'

angular.module('outboundApp')
  .controller 'ClassreportCtrl', ($scope) ->
  	angular.element('select').material_select();
  	angular.element('.tooltipped').tooltip({delay: 50});
  	angular.element('.cards-report').hide();
  	angular.element('.report-type').on 'change', ->
  		$('.report').hide()
  		$('.' + $(this).val()).show()
  		return false