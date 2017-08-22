ActiveAdmin.register Zodiac do
  config.clear_sidebar_sections!
  permit_params :zodiac_desc
  index do
    column :zodiac_desc
    actions
  end

end
