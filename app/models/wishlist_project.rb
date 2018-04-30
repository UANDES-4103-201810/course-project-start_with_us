class WishlistProject < ApplicationRecord
  belongs_to :wishlist
  belongs_to :project
  validates :wishlist_id, presence: true
  validates :project_id, presence: true
end
