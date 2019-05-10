class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.text :answer
      t.boolean :correct
      t.integer :question_id
    end
  end
end
