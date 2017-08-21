ActiveAdmin.register Client do
    filter :first_name
    filter :last_name

    filter :age_range
    filter :state
    filter :gender

    form do |f|
      f.inputs do
        f.input :country_id, :as => :select, :collection => Country.all
        f.input :state_id, :as => :select, :collection => State.all
        f.input :age_range_id, :as => :select, :collection => AgeRange.all

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
