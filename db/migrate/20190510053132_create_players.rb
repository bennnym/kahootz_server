class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :nickname
      t.boolean :entered_answer
      t.integer :score
      t.integer :game_id
      t.integer :streak
      t.boolean :last_correct
      t.string :answer
    end
  end
end
