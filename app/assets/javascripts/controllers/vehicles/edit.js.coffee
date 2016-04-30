@app.controller 'VehiclesEditCtrl', [
  '$scope', '$stateParams'
  ($scope, $stateParams) ->
    console.log $stateParams.id
]