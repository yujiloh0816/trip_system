# class TripFinder < ApplicationRecord
class TripFinder

  def self.suitable_trips(on_date, of_difficulty, need_bike)
    trips = Trip.suitable_trips(on_date, of_difficulty)
    bicycle = Bicycle.suitable_bicycle(on_date, need_bike)
    return {trips: trips, bicycle: bicycle}
  end

end
