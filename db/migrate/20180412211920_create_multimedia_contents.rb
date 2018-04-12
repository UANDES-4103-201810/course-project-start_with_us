class CreateMultimediaContents < ActiveRecord::Migration[5.1]
  def change
    create_table :multimedia_contents do |t|
      t.belongs_to :project
      t.belongs_to :profile
      t.belongs_to :item
      t.string :data_type
      t.attachment :image

      t.timestamps
    end
  end
end
