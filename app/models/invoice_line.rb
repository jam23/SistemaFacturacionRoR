class InvoiceLine < ActiveRecord::Base
  belongs_to :invoice_header
  belongs_to :article
end
