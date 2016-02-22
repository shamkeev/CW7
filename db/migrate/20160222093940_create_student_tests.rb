class CreateStudentTests < ActiveRecord::Migration
  def change
    create_table :student_tests do |t|
      t.string :firstname
      t.string :lastname
      t.string :group
      t.text :html

      t.timestamps null: false
    end
  end
end
