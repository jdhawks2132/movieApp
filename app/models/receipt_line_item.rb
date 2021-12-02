class ReceiptLineItem < ActiveRecord::Base
  belongs_to :receipt
  belongs_to :food
end