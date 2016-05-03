@app.controller 'VehiclesEditCtrl', [
  '$scope', 'VehiclesApiFactory', 'VehiclesFactory', '$stateParams'
  ($scope, VehiclesApiFactory, VehiclesFactory, $stateParams) ->
    console.log $stateParams.id
    VehiclesApiFactory.show({id: $stateParams.id}).$promise.then(
      (vehicle) ->
        $scope.vehicle = VehiclesFactory.toFrontend vehicle
      (response) ->
        console.log response
      )
    $scope.submit = (vehicle) ->
      VehiclesApiFactory.update { id: $stateParams.id, vehicle: VehiclesFactory.toBackend(vehicle) }
]