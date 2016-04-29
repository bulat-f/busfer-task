@app.config ($stateProvider) ->
  $stateProvider.state('index',
    url: ''
    controller: 'PagesIndexCtrl'
    templateUrl: @template 'pages/index'
)