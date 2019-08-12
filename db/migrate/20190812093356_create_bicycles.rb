class CreateBicycles < ActiveRecord::Migration[5.2]
  def change
    create_table :bicycles do |t|
      t.integer :trip_id
      t.date :trip_date
      t.integer :route_type
      t.boolean :clean
      t.boolean :tires
      t.boolean :chain
      t.boolean :brakes

      t.timestamps
    end
  end
end
