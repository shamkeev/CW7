class AddTestToStudentTests < ActiveRecord::Migration
  def change
    add_reference :student_tests, :test, index: true, foreign_key: true
  end
end
