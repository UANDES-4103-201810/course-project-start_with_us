class CreateRolePermissions < ActiveRecord::Migration[5.1]
  def change
    create_table :role_permissions do |t|
      t.role :roles
      t.permission :permissions

      t.timestamps
    end
  end
end
