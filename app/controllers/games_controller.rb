class GamesController < ApplicationController
# before_action :check_for_login, :only => [:edit, :update]
# before_action :check_for_admin, :only => [:index]
  def index
    @game = Game.all
  end

  def new
    @game = Game.new
  end

  def edit
    @game = Game.find params[:id]
  end

  def create
    game = Game.create game_params
    redirect_to game
  end

  def show
<<<<<<< HEAD
     @game = Game.all
=======
     @game = Game.find params[:id]

>>>>>>> 1073477580ce20dba5a0951ec19a295ff98ad4be
  end

  def destroy
    session[:game_id] = nil
    redirect_to login_path
  end

  private
  def game_params
    params.require(:game).permit(:name, :release_date, :price, :description)
  end
end
