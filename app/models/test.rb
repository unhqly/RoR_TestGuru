class Test < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :questions
  has_many :result_tests
  has_many :users, through: :result_tests

  def self.tests_titles_desc(title)
    Test.joins('JOIN categories ON tests.category_id = categories.id')
    .where(categories: { title: title }).order(title: :DESC).pluck(:title)
  end
end
