ActiveAdmin.register State, {:sort_order => :name_asc} do

  permit_params :country_id, :state_name, :state_abbv
  filter :country_id

  index do
    column "Country" do |state|
      state.country.country_abbv
    end
    column :state_name, :sortable => :state_name do |s1|
      s1.state_name
    end
    column :state_abbv

    actions
  end


end
