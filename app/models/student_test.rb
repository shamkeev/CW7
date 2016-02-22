class StudentTest < ActiveRecord::Base
  belongs_to :test
  validates :firstname, presence: true
  validates :lastname, presence: true
  validate :group, presence: true
end
