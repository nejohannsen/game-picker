class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def new
    @game = Game.new()
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to games_path, :notice => "Successfully created game."
    else
      flash[:alert] = "Failed to create game"
      render "new"
    end
  end

  def edit
    @game = Game.find([params:id])
  end

  def update
    @game = Game.find(params[:id])

    if @game.update_attributes(game_params)
      redirect_to games_path, :notice => "Successfully updated game."
    else
      flash[:alert] = "Failed to update game"
      render "edit"
    end
  end

  def show
    @game = Game.find(params[:id])
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    redirect_to games_url, :notice => "Successfully destroyed game."
  end

  def game_params
     params.required(:game).permit(:title, :description, :num_of_coop_players, :num_of_vs_players, :image)
  end
end
