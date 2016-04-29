@app.directive 'vehiclesList', ->
  restrict: 'E'
  transclude: true
  replace: true
  scope:
    vehicles: '='
  templateUrl: @template 'vehicles/vehicles_list'
  controller: [
    '$scope'
    ($scope) ->
      null
  ]