json.array!(@entries) do |entry|
  json.extract! entry, :id, :description, :client_id, :account_number, :movement_type, :amount, :status
  json.url entry_url(entry, format: :json)
end
