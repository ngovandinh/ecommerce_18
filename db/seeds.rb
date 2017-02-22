# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(name:  "Ngo Van Dinh",
             email: "ngovandinh@gmail.com",
             address: "Da nang",
             phone: "123456789",
             password:              "123456",
             password_confirmation: "123456",
             is_admin:     true)
Category.create!(name:  "Men")
Category.create!(name:  "Ladies")
Subcategory.create!(category_id: 1,
			name: 'T-ShirtS'
			)
Subcategory.create!(category_id: 1,
			name: 'T-ShirtS'
			)
Subcategory.create!(category_id: 1,
			name: 'Pants'
			)
Subcategory.create!(category_id: 1,
			name: 'Accessories'
			)
Subcategory.create!(category_id: 2,
			name: 'dress'
			)
Subcategory.create!(category_id: 2,
			name: 'T-ShirtS'
			)
Subcategory.create!(category_id: 2,
			name: 'Pants'
			)
Subcategory.create!(category_id: 2,
			name: 'Shoes'
			)
Subcategory.create!(category_id: 2,
			name: 'Skirt'
			)