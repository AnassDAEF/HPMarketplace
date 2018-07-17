class CreateQuotations < ActiveRecord::Migration[5.2]
  def change
    create_table :quotations do |t|
      t.string :title
      t.string :description
      t.integer :quantity
      t.float :cost
      t.references :task, foreign_key: true

      t.timestamps
    end
  end
end
