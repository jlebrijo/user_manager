class CreatePermissionsUsers < ActiveRecord::Migration
  def change
    create_table :permissions_users do |t|
      t.references :user, index: true
      t.references :permission, index: true

      t.timestamps
    end
  end
end
