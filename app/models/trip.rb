class Trip < ApplicationRecord
  has_many :bicycles

  # bicyclesからprepare_bicyclesに命名を変更
  def prepare_bicycles(bicycles)
    bicycles.each do |bicycle|
      Mechanic.prepare_bicycle(bicycle)
    end
  end

end
