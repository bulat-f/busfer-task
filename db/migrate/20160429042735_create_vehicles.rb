class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :name,                    null: false
      t.string :photos, array: true,     null: false, default: []

      t.timestamps null: false
    end
  end
end
