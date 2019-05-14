class PlayersChannel < ApplicationCable::Channel
  def subscribed
    game = Game.find_by(:id => params[:game])
    stream_for game
  end

  # def received(data)
  #   PlayersChannel.broadcast_to(@game, {game: @game, players:
  #   @game.waiting_users})
  # end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
