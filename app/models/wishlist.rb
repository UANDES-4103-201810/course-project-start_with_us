class Wishlist < ApplicationRecord
  has_many :wishlist_projects
  has_many :projects, through: :wishlist_projects
  validates :user_id, presence: true
end
