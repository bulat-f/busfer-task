@app.factory 'VehiclesFactory', () ->
  toBackend: (model) ->
    {
      name: model.name
      state_number_attributes: @parseStateNumber(model.state_number)
      certificate_of_title_attributes: model.certificate_of_title_attributes
    }

  parseStateNumber: (state_number) =>
    number: state_number.substring(0, 6)
    region_code: state_number.substring(6, state_number.length)