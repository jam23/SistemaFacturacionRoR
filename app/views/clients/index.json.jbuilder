json.array!(@clients) do |client|
  json.extract! client, :id, :name, :trademark, :identification, :account_number, :telephone, :status
  json.url client_url(client, format: :json)
end
