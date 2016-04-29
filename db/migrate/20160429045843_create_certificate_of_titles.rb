class CreateCertificateOfTitles < ActiveRecord::Migration
  def change
    create_table :certificate_of_titles do |t|
      t.string  :number,     null: false
      t.date    :issue_date, null: false
      t.integer :vehicle_id

      t.timestamps null: false
    end
  end
end
