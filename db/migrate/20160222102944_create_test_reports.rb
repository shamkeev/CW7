class CreateTestReports < ActiveRecord::Migration
  def change
    create_table :test_reports do |t|
      t.references :student_test, index: true, foreign_key: true
      t.text :html

      t.timestamps null: false
    end
  end
end
