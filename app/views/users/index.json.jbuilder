json.array!(@users) do |user|
  json.extract! user, :id, :is_shareholder, :first_name, :middle_initial, :last_name, :nickname, :building_id
  json.url user_url(user, format: :json)
end
