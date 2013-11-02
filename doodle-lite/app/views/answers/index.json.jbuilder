json.array!(@answers) do |answer|
  json.extract! answer, :id, :meeting_time_answers, :user
  json.url meeting_url(:meeting, format: :json)
end
