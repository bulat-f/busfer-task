@app.controller 'PagesIndexCtrl', [
  '$scope'
  ($scope) ->
    $scope.header = 'Page Header'
    $scope.vehicles = [
      { name: 'Logan' }
      { name: 'Jetta' }
    ]
]