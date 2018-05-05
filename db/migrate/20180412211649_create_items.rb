class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.references :promise, foreign_key: true
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
