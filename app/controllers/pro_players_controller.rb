class ProPlayersController < ApplicationController
  layout :select_layout

  def index
    @all_pros = ProPlayer.all
  end

  def show
    @player = ProPlayer.find(params[:id])
  end

  private
    def select_layout
      case action_name
      when "show"
        "player"
      when "index"
        "players"
      else
        "application"
      end
    end
end
