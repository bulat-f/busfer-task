@app.directive 'vehiclesList', ->
  restrict: 'E'
  transclude: true
  replace: true
  scope:
    vehicles: '='
  templateUrl: @template 'directives/vehicles/vehicles_list'
  controller: [
    '$scope'
    ($scope) ->
      null
  ]