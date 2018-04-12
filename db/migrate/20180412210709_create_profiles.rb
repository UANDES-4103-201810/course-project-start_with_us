class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.user :users
      t.name :string
      t.last_name :string
      t.about_me :string

      t.timestamps
    end
  end
end
