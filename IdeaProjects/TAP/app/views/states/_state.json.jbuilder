json.extract! state, :id, :country_id, :state_name, :state_abbv, :created_at, :updated_at
json.url state_url(state, format: :json)
