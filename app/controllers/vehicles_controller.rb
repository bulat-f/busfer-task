class VehiclesController < ApplicationController

  before_filter :find_vehicle, only: [:show, :update, :destroy]

  def index
    @vehicles = Vehicle.includes(:state_number, :certificate_of_title)
  end

  def show
  end

  def create
    @vehicle = Vehicle.new vehicle_params
    if @vehicle.save
      render nothing: true, status: :created
    else
      render nothing: true, status: :bad_request
    end
  end

  def update
    @vehicle.update_attributes vehicle_params
    render nothing: true, status: :ok
  end

  def destroy
    if @vehicle.destroy
      render nothing: true, status: :ok
    else
      render nothing: true, status: :not_acceptable
    end
  end

  protected

  def vehicle_params
    params.require(:vehicle).permit(
      :name,
      state_number_attributes: [:id, :number, :region_code],
      certificate_of_title_attributes: [:id, :number, :issue_date])
  end

  def find_vehicle
    @vehicle = Vehicle.find params[:id]
  end
end
