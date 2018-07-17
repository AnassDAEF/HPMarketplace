class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :company
  belongs_to :user_type
  has_many :tenant_or_owner, :class_name => 'main_object', :foreign_key => 'tenant_or_owner'
  has_many :pro_in_charge, :class_name => 'main_object', :foreign_key => 'pro_in_charge'
end
