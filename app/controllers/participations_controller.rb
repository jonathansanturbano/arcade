class ParticipationsController < ApplicationController
  def new
    @game = Game.find(params[:game_id])
    @participation = Participation.new
  end

  def create
    @game = Game.find(params[:game_id])
    @participation = Participation.new(participation_params)
    @participation.game = @game
    if @participation.save
      redirect_to game_path(@game)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def participation_params
    params.require(:participation).permit(:player_id)
  end
end
