class MultimediaContent < ApplicationRecord
  belongs_to :project
  belongs_to :profile
  belongs_to :item
  validates :belongs_to_just_one

  def belongs_to_just_one
    if self.project == nil  and self.profile == nil and self.item != nil
      return true
    elsif self.profile == nil and self.project != nil and self.item == nil
      return true
    elsif self.profile != nil and self.project == nil  and self.item == nil
      return true
    else
      return false
    end
  end
end
