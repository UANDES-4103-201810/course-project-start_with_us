class MultimediaContent < ApplicationRecord
  belongs_to :project, optional: true
  belongs_to :profile, optional: true
  belongs_to :item, optional: true
  has_attached_file :image, styles: {galery: "800x600#", high: "600x600#", medium: "300x300#", thumb: "200x120#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/x

end
