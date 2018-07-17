class CreateObjectTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :object_types do |t|
      t.string :title

      t.timestamps
    end
  end
end
