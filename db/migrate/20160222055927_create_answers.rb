class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :answer
      t.boolean :correct, default: false

      t.timestamps null: false
    end
  end
end
