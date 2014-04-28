'use strict';

angular.module('App.controllers', [])
.controller('InspectionCtrl', ['$scope', '$sce', 'Inspection', function($scope, $sce, Inspection) {
	
	$scope.name = "1234";
			
	$scope.dl_json = function(){
		console.log("dl json");
		
		Inspection.query(function(inspections) {
			$scope.inspections = inspections;
		});
	
	}
	
}]);

