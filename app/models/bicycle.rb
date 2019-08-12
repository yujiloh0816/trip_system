class Bicycle < ApplicationRecord
  belongs_to :trip, optional: true

  def self.suitable_bicycle(trip_date, route_type)
    self.find_by(
      trip_date: trip_date,
      route_type: route_type,
    )
  end

end
