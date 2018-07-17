class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.references :task_category, foreign_key: true
      t.references :task_sub_category, foreign_key: true
      t.text :description
      t.date :start_date
      t.date :finish_date
      t.date :deadline_date
      t.references :mission, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
