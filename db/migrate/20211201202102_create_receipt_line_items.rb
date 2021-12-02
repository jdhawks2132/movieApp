class CreateReceiptLineItems < ActiveRecord::Migration[6.1]
	def change
		create_table :receipt_line_items do |t|
			t.references :food
			t.references :receipt
		end
	end
end
