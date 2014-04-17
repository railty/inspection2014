angular.module('starter.controllers', [])

.controller('GreetingController', ['$scope', function($scope) {
  $scope.greeting = 'Hola!';
	$scope.rightButtons = [
    { 
      text: 'Open side navigation',
      type: 'button-positive',
      content: '<i class="icon ion-navicon"></i>',
      click: function(e) {
        $scope.sideMenuController.toggleRight();
      }
    }
  ];
	
}])

.controller('TabCtrl', function($scope, $rootScope) {
	$rootScope.rightButtons = [
    { 
      text: 'Open side navigation',
      type: 'button-positive',
      content: '<i class="icon ion-navicon"></i>',
      click: function(e) {
        $scope.sideMenuController.toggleRight();
      }
    }
  ];
	$scope.rightButtons = [
    { 
      text: 'Open side navigation',
      type: 'button-positive',
      content: '<i class="icon ion-navicon"></i>',
      click: function(e) {
        $scope.sideMenuController.toggleRight();
      }
    }
  ];
})

.controller('DashCtrl', function($scope, $rootScope) {

	$rootScope.headerTitle = 'My Modified Title';
	
	$rootScope.rightButtons = [{ 
	  type: 'button-clear',
	  content: 'Right Button',
	  tap: function(e) {
	    $location.path("/");
	  }
	}];
	$scope.rightButtons = [{ 
	  type: 'button-clear',
	  content: 'Right Button',
	  tap: function(e) {
	    $location.path("/");
	  }
	}];
	
})

 .controller('InspectionsCtrl', function($scope, Inspection) {
  $scope.inspections = Inspection.query();
})

.controller('InspectionDetailCtrl', function($scope, $stateParams, Inspection) {
  $scope.inspection = Inspection.get({id: $stateParams.inspectionId});
})

.controller('AccountCtrl', function($scope) {
});
