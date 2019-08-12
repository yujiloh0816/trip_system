class Trip < ApplicationRecord
  has_many :bicycles

  # bicyclesからprepare_bicyclesに命名を変更
  def prepare_bicycles(bicycles)
    bicycles.each do |bicycle|
      clean_bicycle(bicycle)
      pump_tires(bicycle)
      lube_chain(bicycle)
      check_brakes(bicycle)
    end
  end

  def clean_bicycle(bike)
    Mechanic.clean_bicycle(bike)
  end

  def pump_tires(bike)
    Mechanic.pump_tires(bike)
  end

  def lube_chain(bike)
    Mechanic.lube_chain(bike)
  end

  def check_brakes(bike)
    Mechanic.check_brakes(bike)
  end

end
