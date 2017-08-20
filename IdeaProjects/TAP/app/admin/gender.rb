ActiveAdmin.register Gender do

  permit_params :gender_desc

  index do
    column 'Gender', :gender_desc
    actions
  end

end
