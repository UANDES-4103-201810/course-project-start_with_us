class Profile < ApplicationRecord
  belongs_to :user
<<<<<<< HEAD

  validates_format_of :name, :last_name, :with => /^[a-z]+$/i,:message => "can only contain letters"
  validates :user, presence: true

=======
>>>>>>> 48252ea43fbc11fa24aa5c85f0ed2e571ca1deb1
end
