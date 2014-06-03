class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|
      t.string :name
      t.references :role, index: true

      t.timestamps
    end
  end
end
