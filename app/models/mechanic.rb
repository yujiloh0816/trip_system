class Mechanic < ApplicationRecord

  def self.clean_bicycle(bike)
    bike.update(clean: true)
  end

  def self.pump_tires(bike)
    bike.update(tires: true)
  end

  def self.lube_chain(bike)
    bike.update(chain: true)
  end

  def self.check_brakes(bike)
    bike.update(brakes: true)
  end

end
