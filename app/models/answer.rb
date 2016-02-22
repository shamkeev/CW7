class Answer < ActiveRecord::Base
  belongs_to :question
  validates :answer, presence: true
  validate :check_other_corrects

  def check_other_corrects
    answers = self.question.answers
    if answers.count > 0
      if self.correct and answers.where(correct: true).exists?
        errors.add(:correct, 'there is already correct answer')
      end
    end
  end

end
