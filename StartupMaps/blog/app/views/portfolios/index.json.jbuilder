json.array!(@portfolios) do |portfolio|
  json.extract! portfolio, :id, :name, :descripton, :date
  json.url portfolio_url(portfolio, format: :json)
end
