json.extract! client, :id, :gender_id, :blood_type_id, :state_id, :country_id, :age_range_id, :zodiac_id, :first_name, :last_name, :age, :weight, :height, :occupation, :premium, :created_at, :updated_at
json.url client_url(client, format: :json)
