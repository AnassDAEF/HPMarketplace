class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :adress1
      t.string :adress2
      t.string :zipcode
      t.string :city
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
