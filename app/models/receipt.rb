class Receipt < ActiveRecord::Base
	has_many :receipt_line_items
	has_many :foods, through: :receipt_line_items
end
