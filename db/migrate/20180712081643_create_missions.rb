class CreateMissions < ActiveRecord::Migration[5.2]
  def change
    create_table :missions do |t|
      t.string :title
      t.string :sub_title
      t.text :description
      t.date :start_date
      t.date :finish_date
      t.date :deadline_date
      t.references :main_object, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
