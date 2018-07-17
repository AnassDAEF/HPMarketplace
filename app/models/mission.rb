class Mission < ApplicationRecord
  belongs_to :main_object
  belongs_to :user
end
