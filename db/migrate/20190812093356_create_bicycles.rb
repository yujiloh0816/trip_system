class CreateBicycles < ActiveRecord::Migration[5.2]
  def change
    create_table :bicycles do |t|
      t.date :trip_date
      t.integer :route_type

      t.timestamps
    end
  end
end
