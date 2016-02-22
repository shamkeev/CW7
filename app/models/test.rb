class Test < ActiveRecord::Base
  has_many :questions, dependent: :destroy
  has_many :student_tests, dependent: :destroy
  validates :name, presence: true, length: {minimum: 6}
end
