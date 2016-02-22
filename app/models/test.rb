class Test < ActiveRecord::Base
  has_many :questions
  validates :name, presence: true, length: {minimum: 6}
end
