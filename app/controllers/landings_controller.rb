class LandingsController < ApplicationController
  def index
    if current_user
      redirect_to machines_path
    end
  end
end
