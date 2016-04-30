@app.config ($stateProvider) ->
  @app.config ($locationProvider, $stateProvider) ->
    $locationProvider.html5Mode(
      enabled: true,
      requireBase: false
    )

  $stateProvider
  .state('vehicles',
    url: ''
    templateUrl: @template 'pages/index'
  )
  .state('vehicles.index',
    url: '/'
    controller: 'VehiclesIndexCtrl'
    templateUrl: @template 'vehicles/index'
  )
  .state('vehicles.new',
    url: '/new'
    controller: 'VehiclesNewCtrl'
    templateUrl: @template 'vehicles/new'
  )
  .state('vehicles.edit',
    url: '/edit/:id'
    controller: 'VehiclesEditCtrl'
    templateUrl: @template 'vehicles/edit'
  )