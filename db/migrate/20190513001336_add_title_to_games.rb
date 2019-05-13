class AddTitleToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :title, :string
  end
end
