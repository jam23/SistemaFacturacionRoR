class InvoiceHeader < ActiveRecord::Base
  belongs_to :seller
  belongs_to :client
end
