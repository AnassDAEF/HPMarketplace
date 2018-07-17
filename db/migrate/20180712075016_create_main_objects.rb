class CreateMainObjects < ActiveRecord::Migration[5.2]
  def change
    create_table :main_objects do |t|
      t.string :adress1
      t.string :adress2
      t.string :zipcode
      t.string :city
      t.string :reference
      t.string :access_code
      t.integer :appt_number
      t.float :surface_area
      t.references :object_type, foreign_key: true
      t.references :tenant_or_owner
      t.references :pro_in_charge
      t.timestamps
    end
  end
end
