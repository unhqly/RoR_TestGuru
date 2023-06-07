class CreateResultTests < ActiveRecord::Migration[7.0]
  def change
    create_table :result_tests do |t|
      t.integer :user_id, null: false
      t.string :user_name, null: false
      t.integer :test_id, null: false
      t.string :test_title, null: false
      t.boolean :passed

      t.timestamps
    end
  end
end
