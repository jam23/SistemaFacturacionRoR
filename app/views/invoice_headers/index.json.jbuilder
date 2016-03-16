json.array!(@invoice_headers) do |invoice_header|
  json.extract! invoice_header, :id, :seller_id, :client_id, :comment
  json.url invoice_header_url(invoice_header, format: :json)
end
