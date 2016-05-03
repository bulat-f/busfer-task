@app.controller 'VehiclesIndexCtrl', [
  '$scope', 'VehiclesApiFactory'
  ($scope, VehiclesApiFactory) ->
    $scope.destroy = (id) ->
      VehiclesApiFactory.destroy({ id: id }).$promise.then(
        (response) ->
          getVehicles()
        (response) ->
          getVehicles()
      )

    getVehicles = ->
      VehiclesApiFactory.index().$promise.then(
        (vehicles) ->
          $scope.vehicles = vehicles
        (response) ->
          console.log response
      )

    getVehicles()

]