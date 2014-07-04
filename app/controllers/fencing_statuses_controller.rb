class FencingStatusesController < ApplicationController
  before_filter :require_user_signed_in

  def show
    @machine = Machine.find params[:machine_id]
    @bangalore_center = [12.9667, 77.5667]
    @distance = Geocoder::Calculations.distance_between(@machine.coordinates, @bangalore_center, :units => :km)
  end
end