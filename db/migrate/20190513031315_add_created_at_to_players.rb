class AddCreatedAtToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :created_at, :datetime
  end
end
