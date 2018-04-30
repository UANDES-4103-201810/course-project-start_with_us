class User < ApplicationRecord
  belongs_to :role
  has_one :profile
  has_many :projects
  accepts_nested_attributes_for :profile
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
