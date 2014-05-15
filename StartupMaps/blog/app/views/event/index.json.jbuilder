json.array!(@event) do |event|
  json.extract! event, :id,:event_id, :name, :description, :start_time, :end_time
  json.url event_url(event, format: :json)
end
