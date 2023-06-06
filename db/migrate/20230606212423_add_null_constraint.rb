class AddNullConstraint < ActiveRecord::Migration[7.0]
  def change
    [:body, :positive, :question_id].each { |attribute| change_column_null(:answers, attribute, false)}
  end
end
