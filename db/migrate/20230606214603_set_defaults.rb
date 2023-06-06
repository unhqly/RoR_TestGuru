class SetDefaults < ActiveRecord::Migration[7.0]
  def up
    change_column_default :tests, :level, 0
    change_column_default :answers, :positive, false
  end

  def down
  end
end
