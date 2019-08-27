class Api::V1::PlayersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create
    @player = Player.create(player_params)
    if @player.valid?
      @token = encode_token(player_id: @player.id)
      render json: { player: PlayerSerializer.new(@player), jwt: @token }, status: :created
    else
      render json: { error: 'failed to create player' }, status: :not_acceptable
    end
  end

  private

  def player_params
    params.require(:player).permit(:email, :password, :first_name, :last_name)
  end
end
