class AddQuizIdToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :quiz_id, :integer
  end
end
