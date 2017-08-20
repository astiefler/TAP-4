class ClientsController < InheritedResources::Base

  private

    def client_params
      params.require(:client).permit(:gender_id, :blood_type_id, :state_id, :country_id, :age_range_id, :zodiac_id, :first_name, :last_name, :age, :weight, :height, :occupation, :premium)
    end
end

