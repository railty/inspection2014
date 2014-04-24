angular.module('starter.directives', [])
.directive('gmap', function() {
	
	function set_center(map) {
		navigator.geolocation.getCurrentPosition(function(pos) {
			map.setCenter(new google.maps.LatLng(pos.coords.latitude, pos.coords.longitude));
		}, function(error) {
			alert('Unable to get location: ' + error.message);
		});
	}
		
	function create_center_button(map) {
		var controlDiv = document.createElement('div');
		// Set CSS styles for the DIV containing the control
		// Setting padding to 5 px will offset the control
		// from the edge of the map.
		controlDiv.style.padding = '5px';

		// Set CSS for the control border.
		var controlUI = document.createElement('div');
		controlUI.style.backgroundColor = 'lightblue';
		controlUI.style.border = 'solid black 1px';
		controlUI.style.cursor = 'pointer';
		controlUI.style.textAlign = 'center';
		controlUI.title = 'Click to set the map to Home';
		controlDiv.appendChild(controlUI);

		// Set CSS for the control interior.
		var controlText = document.createElement('div');
		controlText.style.padding = '4px 10px 4px 10px';
		controlText.innerHTML = '<i class="icon icon ion-android-locate"></i>';
		controlUI.appendChild(controlText);

		google.maps.event.addDomListener(controlUI, 'click', function(){set_center(map);});
		
		controlDiv.index = 1;
		map.controls[google.maps.ControlPosition.BOTTOM_LEFT].push(controlDiv);
	}

	function initialize_map(div) {
		var mapOptions = {
			center: new google.maps.LatLng(43.07493,-89.381388),
			zoom: 10,
			mapTypeId: google.maps.MapTypeId.ROADMAP
		};
		
		var map = new google.maps.Map(div, mapOptions);
		//create_center_button(map);
		
		return map;
}
	
	function link(scope, element, attrs, ctrl) {
		scope.$parent.gmap = ctrl;  
		
		scope.map = initialize_map(element.context);
	}
	
	return {
		controller: function($scope) {
			this.set_center = function(){
				set_center($scope.map);
			}
		},
		link: link
	};
});


