class Customer < ApplicationRecord

  def suitable_trips(on_date, of_difficulty)
    Trip.where(
      on_date: on_date,
      of_difficulty: of_difficulty,
    )
  end

  def suitable_bicycle(trip_date, route_type)
    Bicycle.find_by(
      trip_date: trip_date,
      route_type: route_type,
    )
  end

end
