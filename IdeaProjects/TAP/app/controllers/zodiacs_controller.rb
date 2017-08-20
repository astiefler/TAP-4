class ZodiacsController < InheritedResources::Base

  private

  def zodiac_params
    params.require(:zodiac).permit(:zodiac_desc)
  end
end

