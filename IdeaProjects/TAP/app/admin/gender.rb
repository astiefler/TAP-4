ActiveAdmin.register Gender do
  config.clear_sidebar_sections!
  permit_params :gender_desc

  index do
    column 'Gender', :gender_desc
    actions
  end

end
