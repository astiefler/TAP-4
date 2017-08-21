ActiveAdmin.register Probability do
  permit_params :state_id, :age_range_id, :gender_id, :population, :death, :probability
end
