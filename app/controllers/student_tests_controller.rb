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
    if @student_test.save
      redirect_to test_completed_path(@test)
    end
  end

  def show
    @student_test = StudentTest.find(params[:id])
  end

  def you_have_completed

  end
  private

  def student_test_params
    params.require(:student_test).permit(:firstname, :lastname, :group, :html)
  end
end
