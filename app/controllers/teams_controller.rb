class TeamsController < ApplicationController
  def index
  end

  def new
  end

  def show
    @teams = ["juvenis", "iniciados", "boavista"]
  end
end
