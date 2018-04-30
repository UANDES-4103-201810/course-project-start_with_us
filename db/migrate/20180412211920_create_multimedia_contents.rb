class CreateMultimediaContents < ActiveRecord::Migration[5.1]
  def change
    create_table :multimedia_contents do |t|
      t.references :project, foreign_key: true
      t.references :profile, foreign_key: true
      t.references :item, foreign_key: true
      t.string :data_type

      t.timestamps
    end
  end
end
