class CreateResults < ActiveRecord::Migration[7.0]
  def change
    create_table :results do |t|
      t.references :user, foreign_key: {to_table: :users}, null: false
      t.references :test, foreign_key: {to_table: :tests}, null: false
      t.references :question, foreign_key: {to_table: :questions}, null: false
      t.references :answer, foreign_key: {to_table: :answers}, null: false
      t.boolean :answer_positive, null: false

      t.timestamps
    end
  end
end
