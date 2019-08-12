class Trip < ApplicationRecord
  has_many :bicycles

  def self.suitable_trips(on_date, of_difficulty)
    self.where(
      on_date: on_date,
      of_difficulty: of_difficulty,
    )
  end

end
