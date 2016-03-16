json.array!(@categories) do |category|
  json.extract! category, :id, :description, :status
  json.url category_url(category, format: :json)
end
