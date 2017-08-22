ActiveAdmin.register AgeRange do
  permit_params :age_range_code
  config.clear_sidebar_sections!

  index do
    column :age_range_code
    actions
  end
end
