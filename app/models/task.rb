class Task < ApplicationRecord
  belongs_to :task_category
  belongs_to :task_sub_category
  belongs_to :mission
  belongs_to :user
end
