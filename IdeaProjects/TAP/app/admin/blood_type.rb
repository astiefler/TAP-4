ActiveAdmin.register BloodType do
  permit_params :blood_type_desc
  config.clear_sidebar_sections!

  index do
    column :blood_type_desc
    actions
  end

end
