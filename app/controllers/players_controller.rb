class PlayersController < ApplicationController
  def new
  	@players = Player.new
  end

  def create
  	@player = Player.new(player_params)
  	if @player.save
  		redirect_to  new_player_path, notice: "Successfully created a Player"
  	elsif @player.errors.any?
  		 redirect_to  new_player_path, notice: "Not created a Player"

  	end
  end
   def player_params    
    params.require(:player).permit(:email, :name,:username, :points, :active)
  end
end
