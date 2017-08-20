class CountriesController < InheritedResources::Base

  private

  def country_params
    params.require(:country).permit(:country_name, :country_abbv)
  end
end

