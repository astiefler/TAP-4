ActiveAdmin.register Client do
  permit_params :gender_id, :blood_type_id, :state_id, :country_id, :age_range_id, :zodiac_id, :first_name, :last_name,
                :age, :weight, :height, :occupation, :premium
  filter :first_name
    filter :last_name

    filter :age_range
    filter :state
    filter :gender

    form do |f|
      f.inputs do
        f.input :first_name
        f.input :last_name


        f.input :country_id, :as => :select, :collection => Country.all
        f.input :state_id, :as => :select, :collection => State.all
        f.input :age_range_id, :as => :select, :collection => AgeRange.all
        f.input :age, :as => :string
        f.input :height, :as => :string
        f.input :weight, :as => :string
        f.input :occupation, :as => :string
        f.input :zodiac, :as => :select, :collection => Zodiac.all


      end
      f.actions
    end
    index do
      column :first_name
      column :last_name
      column 'Gender' do |client|
       client.gender.gender_desc
      end
      column 'Country' do |client|
        client.country.country_name
      end
      column 'State' do |client|
        client.state.state_name
      end
      column 'Age Range' do |client|
        client.age_range.age_range_code
      end
      column :age
      column :height
      column :weight
      column :occupation

      column :premium do |client|
        number_to_currency client.premium
      end


    actions
    end


end
