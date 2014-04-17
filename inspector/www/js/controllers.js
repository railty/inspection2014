angular.module('starter.controllers', [])

.controller('DashCtrl', function($scope) {
})

.controller('InspectionsCtrl', function($scope, Inspection) {
  $scope.inspections = Inspection.query();
})

.controller('InspectionDetailCtrl', function($scope, $stateParams, Inspection) {
  $scope.inspection = Inspection.get({id: $stateParams.inspectionId});
})

.controller('AccountCtrl', function($scope) {
});
