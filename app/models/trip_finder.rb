# class TripFinder < ApplicationRecord
class TripFinder

  def self.suitable_trip_plans(on_date, of_difficulty, need_bike)
    trips = suitable_trips(on_date, of_difficulty)
    bicycle = suitable_bicycle(on_date, need_bike)
    return {trips: trips, bicycle: bicycle}
  end

  def self.suitable_trips(on_date, of_difficulty)
    self.trips.where(
      on_date: on_date,
      of_difficulty: of_difficulty,
    )
  end

  def self.suitable_bicycle(trip_date, route_type)
    self.bicycles.find_by(
      trip_date: trip_date,
      route_type: route_type,
    )
  end

  def self.trips
    Trip.all
  end

  def self.bicycles
    Bicycle.all
  end

end
