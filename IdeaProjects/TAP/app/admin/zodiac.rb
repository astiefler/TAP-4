ActiveAdmin.register Zodiac do
  permit_params :zodiac_desc
  index do
    column :zodiac_desc
    actions
  end

end
