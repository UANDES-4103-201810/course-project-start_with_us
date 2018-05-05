class Item < ApplicationRecord
  belongs_to :promise
  has_one :multimedia_content
end
