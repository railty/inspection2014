angular.module('starter.services', ['ngResource'])
.config(['$httpProvider', function($httpProvider){
  $httpProvider.defaults.headers.common = {'X-CSRF-Token': $('meta[name=csrf-token]').attr('content'), 'Accept': 'application/json', 'X-Requested-With': 'XMLHttpRequest'};
}])
.factory('Inspection', ['$resource', function($resource) {
  return $resource('/inspections/:id', {
    id: '@id'
    }, {
      update: {method:'PUT'},
			check: {method:'GET', url:'/inspections/check/:id', params:{answer:123}}
    });
  }
]);
