class Mechanic < ApplicationRecord

  def self.prepare_trip(bicycles)
    bicycles.each do |bicycle|
      prepare_bicycle(bicycle)
    end
  end

  def self.prepare_bicycle(bicycle)
    clean_bicycle(bicycle)
    pump_tires(bicycle)
    lube_chain(bicycle)
    check_brakes(bicycle)
  end

  def self.clean_bicycle(bicycle)
    bicycle.update(clean: true)
  end

  def self.pump_tires(bicycle)
    bicycle.update(tires: true)
  end

  def self.lube_chain(bicycle)
    bicycle.update(chain: true)
  end

  def self.check_brakes(bicycle)
    bicycle.update(brakes: true)
  end

end
