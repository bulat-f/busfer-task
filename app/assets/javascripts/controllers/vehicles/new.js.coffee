@app.controller 'VehiclesNewCtrl', [
  '$scope', 'VehiclesApiFactory', 'VehiclesFactory'
  ($scope, VehiclesApiFactory, VehiclesFactory) ->
    $scope.submit = (vehicle) ->
      VehiclesApiFactory.create { vehicle: VehiclesFactory.toBackend($scope.vehicle) }
]