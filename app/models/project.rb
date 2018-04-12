class Project < ApplicationRecord
  belongs_to :user
  has_many :promises
  has_many :foundings
end
