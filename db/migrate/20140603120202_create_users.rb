class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.references :role, index: true
      t.string :status

      t.timestamps
    end
  end
end
