class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :role, null: false
      t.integer :level

      t.timestamps
    end
  end
end
