class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
  end

  def new
    @team = Team.new # Needed to instantiate the form_with
  end

  def create
    @team = Team.new(params[:team])
    @team.save # Will raise ActiveModel::ForbiddenAttributesError
    redirect_to team_path(@team)
  end

  private

  def team_params
    params.require(:team).permit(:name)
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    @team = Team.find(params[:id])
    @team.update(params[:team]) # Will raise ActiveModel::ForbiddenAttributesError
    redirect_to team_path(@team)
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
    # No need for app/views/restaurants/destroy.html.erb
    redirect_to teams_path, status: :see_other
  end
end
