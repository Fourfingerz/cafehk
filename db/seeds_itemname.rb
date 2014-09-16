# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = Category.create([
		{ itemname: 'Starters'}, {itemname: 'Sizzling Platters'}, {itemname: 'Lunch Specials'},
		{ itemname: 'Noodles/Rice'}, { itemname: 'Poultry'}, { itemname: 'Pork'},
		{ itemname: 'Beef'}, {itemname: 'Vegetable'}, {itemname: 'Seafood'}, {itemname: 'Beverages'}
	])

# create 50 items, with random itemnames, and
# randomly assign one of the categories above to each itemname
for i in 0..49
	itemname = Faker::Commerce.product_name
	price = Faker::PhoneNumber.subscriber_number(2)

	# randomly assign one of the categories we just created
	category = Category.first(offset: rand(Category.count))
	a = Item.create(itemname: itemname, price: price, categories: [category,])
end