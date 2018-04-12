class User < ApplicationRecord
  belongs_to :role

<<<<<<< HEAD
  validates :email, presence: true, format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/}
  validates :password, format: {with: /\A[a-zA-Z0-9\.]{8,12}\z/ , message: "password must be between 8 to 12 alphanumeric characters"}
  validates :about_me, length: {maximum: 200}


=======
>>>>>>> 48252ea43fbc11fa24aa5c85f0ed2e571ca1deb1
end
