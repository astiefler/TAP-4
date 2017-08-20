class AgeRangesController < InheritedResources::Base

  private

  def age_range_params
    params.require(:age_range).permit(:age_range_code)
  end
end

