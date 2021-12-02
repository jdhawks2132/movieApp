puts 'Reticulating slpines 🌱🌱🌱 ...'

Ticket.destroy_all
Movie.destroy_all
Food.destroy_all
Receipt.destroy_all
ReceiptLineItem.destroy_all

puts 'Creating Movies...'

5.times do
	Movie.create(
		title: Faker::Movie.title,
		director: Faker::Name.name,
		description: Faker::GreekPhilosophers.quote,
		showing: true,
	)
end

puts 'Creating Tickets...'

15.times do
	Ticket.create(
		name: Faker::Name.name,
		price: rand(5..15),
		movie_id: Movie.all.sample.id,
	)
end

puts 'Creating Food and Receipts...'

10.times { Food.create(food_name: Faker::Food.dish, price: rand(5..15)) }

5.times { Receipt.create(name: Faker::Name.name) }

10.times do
	ReceiptLineItem.create(
		food: Food.all.sample,
		receipt_id: Receipt.all.sample.id,
	)
end

puts 'Deleting Github Repositories...'
sleep 1
puts 'Done!'
