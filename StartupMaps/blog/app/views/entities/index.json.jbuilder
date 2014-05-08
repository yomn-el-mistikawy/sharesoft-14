json.array!(@entities) do |entity|
  json.extract! entity, :name, :location, :industry, :description, :work_status, :available_internships, :interests, :social_media_links, :headquarters, :embeded_videos, :work_portolio, :privacy
  json.url entity_url(entity, format: :json)
end
