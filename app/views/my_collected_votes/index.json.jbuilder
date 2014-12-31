json.array!(@my_collected_votes) do |my_collected_vote|
  json.extract! my_collected_vote, :id, :votes_collected, :building_id, :user_id, :year
  json.url my_collected_vote_url(my_collected_vote, format: :json)
end
