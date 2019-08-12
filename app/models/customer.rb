class Customer < ApplicationRecord

  def suitable_trips(on_date, of_difficulty, need_bike)
    Trip.where(
      on_date: on_date,
      of_difficulty: of_difficulty,
      need_bike: need_bike
    )
  end

end
