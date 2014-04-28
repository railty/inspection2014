'use strict';

angular.module('App', [
	'ngResource', 
	'ngSanitize', 
	'App.filters',
	'App.services',
	'App.factories',
	'App.controllers'
])
 .config(['$httpProvider', function($httpProvider){
  $httpProvider.defaults.headers.common = {'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content'), 'Accept': 'application/json', 'X-Requested-With': 'XMLHttpRequest'};
}]);


