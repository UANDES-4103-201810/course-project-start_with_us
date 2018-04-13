class User < ApplicationRecord
  belongs_to :role
  validates :email, uniqueness: true, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i,
                                                message: "only allows letters" }
  validates :password, format: {with: /\A[a-zA-Z0-9\.]{8,12}\z/ , message: "password must be between 8 to 12 alphanumeric characters"}

end
