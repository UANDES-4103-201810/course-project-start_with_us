class Payment < ApplicationRecord
  belongs_to :promise , optional: true
  belongs_to :credit_card
  belongs_to :project
end
