class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|
      t.string :body, null: false
      t.boolean :positive, null: false, :default => false
      t.integer :question_id, null: false

      t.timestamps
    end
  end
end
