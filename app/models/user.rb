class User < ApplicationRecord
  def finished_tests(level)
    Test.joins('JOIN result_tests ON result_tests.test_id = tests.id')
    .where(level: level, result_tests: { user_id: self.id })
  end

  has_many :result_tests
  has_many :tests, through: :result_tests
end
