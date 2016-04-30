@app.directive 'vehiclesForm', ->
  restrict: 'E'
  transclude: true
  replace: true
  scope:
    vehicle: '='
  templateUrl: @template 'directives/vehicles/form'
  controller: [
    '$scope'
    ($scope) ->
      $scope.vehicle ||= {}
      $scope.vehicle.state_number_attributes ||= {}
      # $scope.vehicle.state_number_attributes ||= {}
  ]