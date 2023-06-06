class AddNullConstraint2 < ActiveRecord::Migration[7.0]
  def change
    change_column_null(:categories, :title, false)

    [:body, :test_id].each { |attribute| change_column_null(:questions, attribute, false)}

    [:user_id, :user_name, :test_id, :test_title].each { |attribute| change_column_null(:result_tests, attribute, false)}

    [:user_id, :user_name, :test_id, :test_title, :question_id, :question_body, :answer_body, :answer_positive].each { |attribute| change_column_null(:results, attribute, false)}

    [:name, :role].each { |attribute| change_column_null(:users, attribute, false)}
  end
end
