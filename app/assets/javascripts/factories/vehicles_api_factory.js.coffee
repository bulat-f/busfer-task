@app.factory 'VehiclesApiFactory', [
  '$resource'
  ($resource) ->
    $resource 'vehicles/:id', { id: '@id' },
      index: { method: 'GET', isArray: true }
      create: { method: 'POST' }
      update: { method: 'PUT' }
]