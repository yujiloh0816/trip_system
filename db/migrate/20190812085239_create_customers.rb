class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :name
      t.date :on_date
      t.integer :of_difficulty
      t.integer :need_bike

      t.timestamps
    end
  end
end
