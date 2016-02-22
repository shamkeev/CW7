class Test < ActiveRecord::Base
  has_many :questions, dependent: :destroy
  validates :name, presence: true, length: {minimum: 6}
end
