class AddAttachmentImageToMultimediaContents < ActiveRecord::Migration[5.1]
  def self.up
    change_table :multimedia_contents do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :multimedia_contents, :image
  end
end
