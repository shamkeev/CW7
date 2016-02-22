class StudentTestsController < ApplicationController

  def new
    @test = Test.find(params[:test_id])
    @student_test = @test.student_tests.build
  end

  def index
    @test = Test.find(params[:test_id])
    @student_tests = StudentTest.where(test:@test)
  end

  def create
    @test = Test.find(params[:test_id])
    @student_test = @test.student_tests.create(student_test_params)
    #p student_test_params
    p params['1']
    if @student_test.save
      generate_report
      redirect_to test_completed_path(@test)
    else
      render 'new'
    end
  end

  def show
    @student_test = StudentTest.find(params[:id])
  end

  def you_have_completed
  end

  def generate_report
    @test.questions.each do |q|
      params.each do
        if params["q.id"] == q.answers.where(correct: true).first.answer
          p q.answers.where(correct: true).first.answer
        end
      end
    end
  end
  private

  def student_test_params
    params.require(:student_test).permit(:firstname, :lastname, :group, :html, :test_id)
  end
end
