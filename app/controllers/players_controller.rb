class PlayersController < ApplicationController
  def create
    player = Player.new(player_params)

    game = Game.find(player_params[:game_id])
    
    if player.save
      serialized_data = ActiveModelSerializers::Adapter::Json.new(
        PlayerSerializer.new(player)
      ).serializable_hash
      PlayersChannel.broadcast_to game, serialized_data
      head :ok
    end
  end

  private

  def player_params
    params.require(:player).permit(:nickname, :game_id)
  end

end
