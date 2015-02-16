class PlayersController < ApplicationController
  def new
  	@players = Player.new
  end

  def create
  	@player = Player.new(player_params)
  	if @player.save
  		redirect_to  new_player_path, notice: "Successfully created a Player"
  	else
      flash[:notice] = "Check your errors"
		 render :new
  	end
  end
  
   def player_params    
    params.require(:player).permit(:email, :name,:username, :points, :active)
  end
end
