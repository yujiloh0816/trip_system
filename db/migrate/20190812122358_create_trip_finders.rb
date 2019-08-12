class CreateTripFinders < ActiveRecord::Migration[5.2]
  def change
    create_table :trip_finders do |t|

      t.timestamps
    end
  end
end
