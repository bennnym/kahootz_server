class PlayersChannel < ApplicationCable::Channel
  def subscribed
    game = Game.find_by(:title => params[:game])
    stream_for "players_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
