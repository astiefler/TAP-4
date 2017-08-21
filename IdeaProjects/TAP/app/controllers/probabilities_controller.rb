class ProbabilitiesController < InheritedResources::Base

  private

    def probability_params
      params.require(:probability).permit(:state_id, :age_range_id, :gender_id, :population, :death, :probability)
    end
end

