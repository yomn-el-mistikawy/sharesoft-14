json.array!(@portfolios) do |portfolio|
  json.extract! portfolio, :id, :name, :date, :description
  json.url portfolio_url(portfolio, format: :json)
end
