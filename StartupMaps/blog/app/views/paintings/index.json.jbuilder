json.array!(@paintings) do |painting|
  json.extract! painting, :id, :gallery_id, :name
  json.url painting_url(painting, format: :json)
end
