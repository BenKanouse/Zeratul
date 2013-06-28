class DashboardsController < ApplicationController

  def index
    # subpanel is going to be a highlight area where whatever controller
    # you currently visit is going to scoup / display cool shit
    @sub_panel_details = {}
    @team = @current_manager.fantasy_team
    @fantasy_players = @team.main_team_pro_players

    respond_to do |format|
      format.html # index.html.erb
    end
  end

end
