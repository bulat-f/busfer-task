@app.directive 'vehiclesForm', ->
  restrict: 'E'
  transclude: true
  replace: true
  scope:
    vehicle: '='
    action: '='
  templateUrl: @template 'directives/vehicles/form'
  controller: [
    '$scope', 'VehiclesApiFactory', 'VehiclesFactory'
    ($scope, VehiclesApiFactory, VehiclesFactory) ->
      $scope.vehicle ||= {}
      $scope.vehicle.certificate_of_title_attributes ||= {}
      $scope.submit = ->
        console.log 'submit'
        VehiclesApiFactory.create { vehicle: VehiclesFactory.toBackend($scope.vehicle) }
  ]