json.array!(@sellers) do |seller|
  json.extract! seller, :id, :name, :last_name, :comission_percent, :status, :username, :password
  json.url seller_url(seller, format: :json)
end
