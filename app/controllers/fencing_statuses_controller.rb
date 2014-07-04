class FencingStatusesController < ApplicationController
  before_filter :require_user_signed_in

  def show
    @machine = Machine.find params[:machine_id]
    @office_center = [12.935198,77.614739]
    @distance = Geocoder::Calculations.distance_between(@machine.coordinates, @office_center, :units => :km) * 1000
  end
end