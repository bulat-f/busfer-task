@app.factory 'VehiclesApiFactory', [
  '$resource'
  ($resource) ->
    $resource 'vehicles/:id', { id: '@id' },
      index: { method: 'GET', isArray: true }
      show: { method: 'GET' }
      create: { method: 'POST' }
      update: { method: 'PUT' }
      destroy: { method: 'DELETE' }
]