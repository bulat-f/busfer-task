class CreateStateNumbers < ActiveRecord::Migration
  def change
    create_table :state_numbers do |t|
      t.string  :number,      null: false
      t.integer :region_code, null: false
      t.integer :vehicle_id

      t.timestamps null: false
    end

    add_index :state_numbers, [:number, :region_code], unique: true
  end
end
