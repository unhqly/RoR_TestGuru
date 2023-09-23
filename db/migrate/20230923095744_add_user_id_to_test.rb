class AddUserIdToTest < ActiveRecord::Migration[6.1]
  def change
    change_table :tests do |t|
      t.references :user, foreign_key: {to_table: :users}
    end
  end
end
