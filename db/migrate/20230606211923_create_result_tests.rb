class CreateResultTests < ActiveRecord::Migration[7.0]
  def change
    create_table :result_tests do |t|
      t.integer :user_id
      t.string :user_name
      t.integer :test_id
      t.string :test_title
      t.boolean :passed

      t.timestamps
    end
  end
end
