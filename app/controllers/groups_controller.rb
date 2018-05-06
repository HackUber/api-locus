class GroupsController < ApplicationController

  before_action :set_group, only: [:show, :update]

  def index
    @groups = User.first.groups
    render :index, status: :ok
  end

  def show
    @itinerary = Itinerary.compile_itinerary(@group.id)
  end

  def create
    @group = User.first.groups.create(group_params)
    head :ok
  end

  def update
    if @group.update(group_params)
      head :ok
    else
      head :bad_request
    end
  end

  private

  def set_group
    @group = User.first.groups.find(params[:id])
    head :not_found unless @group
  end

  def group_params
    params.permit(:name, :origin, :destination, :arrival_time, :departure_time)
  end
end
