class Food < ActiveRecord::Base
	has_many :receipt_line_items
	has_many :receipts, through: :receipt_line_items
end
