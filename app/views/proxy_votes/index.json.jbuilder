json.array!(@proxy_votes) do |proxy_vote|
  json.extract! proxy_vote, :id, :year, :count, :building_id
  json.url proxy_vote_url(proxy_vote, format: :json)
end
