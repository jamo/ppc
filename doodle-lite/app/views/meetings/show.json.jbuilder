json.meeting @meeting, :title, :description, :created_at, :updated_at, :meeting_times


json.answers(@answers) do |answer|
  json.extract! answer, :id, :meeting_time_answers, :user
end

