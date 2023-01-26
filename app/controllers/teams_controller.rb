class TeamsController < ApplicationController
  def index
  end

  def new
    @team = Team.new
    # authorize @team
    # @team >> @teams
  end

  def show
    @teams = []
  end
end
