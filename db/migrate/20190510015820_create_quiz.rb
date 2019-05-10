class CreateQuiz < ActiveRecord::Migration[5.2]
  def change
    create_table :quizzes do |t|
      t.text :category
      t.text :difficulty
    end
  end
end
