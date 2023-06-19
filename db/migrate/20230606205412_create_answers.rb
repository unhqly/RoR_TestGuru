class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.string :body, null: false
      t.boolean :positive, null: false, :default => 0
      t.references :question, foreign_key: {to_table: :questions}

      t.timestamps
    end
  end
end
