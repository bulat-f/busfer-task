'use strict'

@template = (path) ->
  "/assets/#{path}.html"

@app = angular.module 'BusferTaskApp', [
  'ui.router'
]