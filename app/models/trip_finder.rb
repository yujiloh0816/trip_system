class TripFinder < ApplicationRecord

  def suitable_trip_plans
    trips = suitable_trips(Trip.all)
    bicycle = suitable_bicycle(Bicycle.all)
    return {trips: trips, bicycle: bicycle}
  end

  def suitable_trips(trips)
    trips.where(
      on_date: self.on_date,
      of_difficulty: self.of_difficulty,
    )
  end

  def suitable_bicycle(bicycles)
    bicycles.find_by(
      trip_date: self.on_date,
      route_type: self.need_bike,
    )
  end

  private

end
