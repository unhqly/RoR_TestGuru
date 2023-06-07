class CreateResults < ActiveRecord::Migration[7.0]
  def change
    create_table :results do |t|
      t.integer :user_id, null: false
      t.string :user_name, null: false
      t.integer :test_id, null: false
      t.string :test_title, null: false
      t.integer :question_id, null: false
      t.string :question_body, null: false
      t.string :answer_body, null: false
      t.boolean :answer_positive, null: false

      t.timestamps
    end
  end
end
