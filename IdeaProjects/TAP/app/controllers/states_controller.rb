class StatesController < InheritedResources::Base

  private

  def state_params
    params.require(:state).permit(:country_id, :state_name, :state_abbv)
  end
end

