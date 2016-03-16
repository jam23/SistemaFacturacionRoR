json.array!(@invoice_lines) do |invoice_line|
  json.extract! invoice_line, :id, :invoice_header_id, :article_id, :quantity, :unit_price
  json.url invoice_line_url(invoice_line, format: :json)
end
