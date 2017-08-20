class BloodTypesController < InheritedResources::Base

  private

  def blood_type_params
    params.require(:blood_type).permit(:blood_type_desc)
  end
end

