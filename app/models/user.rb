class User < ApplicationRecord

  def finished_tests(level)
    Test.joins('JOIN result_tests ON result_tests.test_id = tests.id')
    .joins('JOIN users ON users.id = result_tests.user_id')
    .where(level: level, users: { id: id })
  end
end
