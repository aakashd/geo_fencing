class Machine < ActiveRecord::Base
  belongs_to :user

  def coordinates
    [latitude,longitude]
  end
end
