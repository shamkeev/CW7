class Question < ActiveRecord::Base
  belongs_to :test
  has_many :answers
  validates :question, presence: true, length: {minimum: 15}
end
