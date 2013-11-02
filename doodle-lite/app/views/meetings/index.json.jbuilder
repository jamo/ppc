json.array!(@meetings) do |meeting|
  json.extract! meeting, :title, :description
  json.url meeting_url(meeting, format: :json)
end
