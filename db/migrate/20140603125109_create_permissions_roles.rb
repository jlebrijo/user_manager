class CreatePermissionsRoles < ActiveRecord::Migration
  def change
    create_table :permissions_roles do |t|
      t.references :role, index: true
      t.references :permission, index: true

      t.timestamps
    end
  end
end
