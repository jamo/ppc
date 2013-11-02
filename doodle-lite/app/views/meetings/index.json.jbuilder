json.array!(@meetings) do |meeting|
  json.extract! meeting, :title, :description, :id
  json.url meeting_url(meeting, format: :json)
end
