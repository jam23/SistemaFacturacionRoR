json.array!(@articles) do |article|
  json.extract! article, :id, :category_id, :description, :unit_price, :status
  json.url article_url(article, format: :json)
end
