class ItinerariesController

  before_action :set_itinerary, only: [:show, :update]

  def update
    if @itinerary.update(itinerary_params)
      head :ok
    else
      head :bad_request
    end
  end

  private

  def set_group
    @group = Group.find(params[:group_id])
  end

  def set_itinerary
    @itinerary = Itinerary.find(params[:id])
  end
end
