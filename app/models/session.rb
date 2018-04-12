class Session < ApplicationRecord
  belongs_to :user
<<<<<<< HEAD

  validates :user_id,presence: true

=======
>>>>>>> 48252ea43fbc11fa24aa5c85f0ed2e571ca1deb1
end
