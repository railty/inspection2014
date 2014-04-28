'use strict';

/* Factories */

angular.module('App.factories', [])
.factory('Inspection', ['$resource', function($resource) {
    return $resource('http://appserver/inspections/:id', {
      id: '@id'
    }, {
      update: {method:'PUT'},
    });
  }
]);
