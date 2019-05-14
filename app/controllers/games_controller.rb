class GamesController < ApplicationController
  def all
    games = Game.all
    render json: games
  end

  def create
    game = Game.new(game_params)

    if game.save
      serialized_data = ActiveModelSerializers::Adapter::Json.new(
        GameSerializer.new(game)
      ).serializable_hash
      ActionCable.server.broadcast 'games_channel', serialized_data
      head :ok
    end
  end

  def show
    game = Game.find_by :id => params[:id]

    render :json => game.to_json(:include => { :quiz => { :include => { :questions => { :include => :answers}}}})

  end

  # post request here to get a new game code
  def new_game_code
    if params[:new_game] == true
      game = Game.new
      game.quiz_id = params[:quiz_id]
      game.save
    end
  end

    # GET request here to return the code to the client
    def game_details
      new_game = Game.last

      render :json => new_game.to_json( :include => :players )
    end

  private

  def game_params
    params.require(:game).permit(:title)
  end
end
