json.array!(@jobs_needs) do |jobs_need|
  json.extract! jobs_need, :id, :job, :needs, :goals
  json.url jobs_need_url(jobs_need, format: :json)
end
