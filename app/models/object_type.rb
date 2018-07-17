class ObjectType < ApplicationRecord
  belongs_to :tenant_or_owner, :class_name => 'user'
  belongs_to :pro_in_charge,  :class_name => 'user'
end
