class MultimediaContent < ApplicationRecord
  belongs_to :project
  belongs_to :profile
  belongs_to :item
end
