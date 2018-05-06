class GroupsController < ApplicationController

  before_action :set_group, only: [:show]

  def index
    @groups = User.first.groups
    head :ok
  end

  def show
  end

  def create
    @group = User.first.groups.create(group_params)
    head :ok
  end

  private

  def set_group
    @group = User.first.groups.find(params[:id])
    head :not_fount unless @group
  end

  def group_params
    params.permit(:name, :origin, :destination, :arrival_time, :departure_time)
  end
end
