json.array!(@entity_portfolios) do |entity_portfolio|
  json.extract! entity_portfolio, :id, :name, :description, :launch
  json.url entity_portfolio_url(entity_portfolio, format: :json)
end
