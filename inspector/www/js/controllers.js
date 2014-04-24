angular.module('starter.controllers', [])

.controller('HomeCtrl', function($scope) {
	$scope.test = function(){
		$scope.gmap.set_center();
	}
})

 .controller('InspectionsCtrl', function($scope, Inspection) {
  $scope.inspections = Inspection.query();
})

.controller('InspectionDetailCtrl', function($scope, $stateParams, Inspection) {
  $scope.inspection = Inspection.get({id: $stateParams.inspectionId});
})

.controller('AccountCtrl', function($scope) {
});
