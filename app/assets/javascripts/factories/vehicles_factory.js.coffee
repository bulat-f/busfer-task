@app.factory 'VehiclesFactory', () ->
  toBackend: (model) ->
    {
      name: model.name
      state_number_attributes: @splitStateNumber(model.state_number)
      certificate_of_title_attributes: model.certificate_of_title
    }

  toFrontend: (model) ->
    {
      name: model.name
      state_number: @joinStateNumber(model.state_number)
      certificate_of_title: model.certificate_of_title
    }

  splitStateNumber: (state_number) =>
    state_number.number = state_number.string.substring(0, 6)
    state_number.region_code = state_number.string.substring(6, state_number.length)
    state_number

  joinStateNumber: (state_number) =>
    state_number.string = state_number.number + state_number.region_code
    state_number