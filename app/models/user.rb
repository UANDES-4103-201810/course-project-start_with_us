class User < ApplicationRecord
  belongs_to :role
  has_one :profile
  accepts_nested_attributes_for :profile


end
