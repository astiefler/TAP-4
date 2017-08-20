ActiveAdmin.register BloodType do
  permit_params :blood_type_desc

  index do
    column :blood_type_desc
    actions
  end

end
