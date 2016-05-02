class VehiclesController < ApplicationController
  def index
    @vehicles = Vehicle.all
  end

  def show
  end

  def create
    # byebug
    @vehicle = Vehicle.new vehicle_params
    if @vehicle.save
      render nothing: true, status: :created
    else
      render nothing: true, status: :bad_request
    end
  end

  def update
  end

  def destroy
  end

  protected

  def vehicle_params
    params.require(:vehicle).permit(
      :name,
      state_number_attributes: [:number, :region_code],
      certificate_of_title_attributes: [:number, :issue_date])
  end
end
