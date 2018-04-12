class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.email :string
      t.password :string
      t.role :roles

      t.timestamps
    end
  end
end
