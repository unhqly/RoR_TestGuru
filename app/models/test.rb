class Test < ApplicationRecord
  def self.tests_titles_desc(title)
    Test.joins('JOIN categories ON tests.category_id = categories.id').where(categories: { title: title }).order(title: :DESC).pluck(:title)
  end
end
