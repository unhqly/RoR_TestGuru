class CreateTests < ActiveRecord::Migration[6.1]
  def change
    create_table :tests do |t|
      t.string :title, null: false
      t.integer :level, :default => 0
      t.references :category, foreign_key: {to_table: :categories}

      t.timestamps
    end
  end
end
