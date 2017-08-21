ActiveAdmin.register Probability do
  permit_params :state_id, :age_range_id, :gender_id, :population, :death, :probability
  filter :gender
  filter :age_range
  filter :state

  index do

    column :state, sortable: :state_name
    column :age_range
    column :gender
    column :population
    column "Deaths", :death
    column "Probability of Death", :probability, sortable: :probability do |probability|
      number_to_percentage probability.probability
    end
    actions
  end
end
