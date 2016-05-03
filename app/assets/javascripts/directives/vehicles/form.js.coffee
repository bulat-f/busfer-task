@app.directive 'vehiclesForm', ->
  restrict: 'E'
  transclude: true
  replace: true
  scope:
    vehicle: '='
    submit: '&'
  templateUrl: @template 'directives/vehicles/form'
  controller: [
    '$scope', '$state'
    ($scope, $state) ->
      $scope.vehicle ||= {}
      $scope.vehicle.certificate_of_title ||= {}
      $scope.submitHandler = ->
        $scope.status = 'disabled'
        $scope.submit({ vehicle: $scope.vehicle }).$promise.then(
          (response) ->
            $state.go '^.index'
            $scope.status = ''
          (response) ->
            console.log response
            $scope.status = ''
          )
  ]