class CreateResultTests < ActiveRecord::Migration[6.1]
  def change
    create_table :result_tests do |t|
      t.references :user, foreign_key: {to_table: :users}, null: false
      t.references :test, foreign_key: {to_table: :tests}, null: false
      t.boolean :passed

      t.timestamps
    end
  end
end
