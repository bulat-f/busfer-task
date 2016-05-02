@app.controller 'VehiclesIndexCtrl', [
  '$scope', 'VehiclesApiFactory'
  ($scope, VehiclesApiFactory) ->
    console.log 'index'
    VehiclesApiFactory.index().$promise.then(
      (vehicles) ->
        $scope.vehicles = vehicles
      (response) ->
        console.log response
    )
]