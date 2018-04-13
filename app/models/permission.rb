class Permission < ApplicationRecord
  has_many :role_permissions
  has_many :roles, through: :role_permissions
  validates_format_of :name, :with => /[a-z ]+/i,:message => "can only contain letters"
end
