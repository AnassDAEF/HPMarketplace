class MainObject < ApplicationRecord
  belongs_to :object_type
  belongs_to :tenant_or_owner
  belongs_to :pro_in_charge
end
