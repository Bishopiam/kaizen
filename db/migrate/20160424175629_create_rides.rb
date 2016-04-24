class CreateRides < ActiveRecord::Migration
  def change
    create_table :rides do |t|
      t.string :hospital_section
      t.datetime :pickup_time
      t.datetime :arrival_time
      t.integer :patient_id
      t.integer :hospital_id

      t.timestamps null: false
    end
  end
end
