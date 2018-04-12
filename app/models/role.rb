class Role < ApplicationRecord
  has_many :role_permissions
  has_many :roles, through: :role_permissions

<<<<<<< HEAD
  validates_format_of :name, :with => /^[a-z ]+$/i

=======
>>>>>>> 48252ea43fbc11fa24aa5c85f0ed2e571ca1deb1
end
