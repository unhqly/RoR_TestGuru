class CreateResults < ActiveRecord::Migration[7.0]
  def change
    create_table :results do |t|
      t.integer :user_id
      t.string :user_name
      t.integer :test_id
      t.string :test_title
      t.integer :question_id
      t.string :question_body
      t.string :answer_body
      t.boolean :answer_positive

      t.timestamps
    end
  end
end
