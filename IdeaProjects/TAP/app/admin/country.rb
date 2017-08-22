ActiveAdmin.register Country do
  config.clear_sidebar_sections!
  permit_params :country_name, :country_abbv
  index do


    column :country_name
    column :country_abbv
    actions
  end


end
