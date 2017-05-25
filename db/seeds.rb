# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# def set_autoincrement_number(table_name)
#   ActiveRecord::Base.connection.reset_pk_sequence!(table_name)
# end

# Category.destroy_all
# set_autoincrement_number("categories")
# set_autoincrement_number("products")
# ["Artifical Nails", "Manicure", "Waxing", "Predicure"].each do |cat|
#   Category.create(name: cat)
# end

# [["Acrylic Set", "$30.00 & Up"], ["Acrylic Fill", "$18.00 & Up"], ["Acrylic Scupture Set", "$50.00 & Up"], ["Gel Color Coating", "$15.00"], \
#   ["French Extra", "$5.00"], ["Nexgen Powder Set", "$25.00 & Up"], ["Adding Tips", "$5.00 & Up"], ["French Extra", "$5.00"], ["Wrapping Need Extra", "$5.00"], ["UV Gel Set", "$50.00 & Up"], ["UV Gel Fill", "$30.00 & Up"], \
#   ["Gel Color Coating", "$10.00"], ["French Extra", "$5.00"], ["White Tip Acrylic set", "$30.00 & Up"], ["Pink & White Acrylic Set", "$45.00 & Up"], ["Pink & White Acrylic Fill", "$40.00 & Up"],\
#   ["Pink Fill", "$25.00 & Up"], ["Nail Repair", "$5.00 & Up"], ["Cutting Down", "$5.00"], ["Artifical Polish Change", "$12.00 & Up"], ["Artifical Soak-Off", "$12.00 & Up"], ["Nail Art", "$3.00 per nail"]].each do |product|
#   Category.first.products.create(name: product[0], price: product[1], description: product.try(:[], 2))
# end

# ["Manicure", "Manicure w/IO Min. Massage", "Manicure w/Sugar Scrub", "Deluxe Manicure", "Polish Change", "French Extra", "Shiny Buff Extra", \
#   "Wrapping Need Extra", "Gel Polish Coating Extra", "Gel French Extra", "Gel Soak-Off"].each do |product|
#     Category.find(2).products.create(name: product)
# end

# ["Lady Eyebrows", "Gentleman Eyebrows", "Eyebrows Dye", "Upper Lip", "Chin", "Side Burns", "Full Face", \
#   "Bikini Lines", "Brazilian", "Feet", "Half Legs", "Full Legs", "Hands", "Half Arms", "Full Arms", "Underarms", "Back"].each do |product|
#     Category.find(3).products.create(name: product)
# end

# ["Predicure", "Polish Change on Toes", "Predicure w/ IO Min. Massage", "Predicure With Sugar Scrub", "Deluxe Predicure", "Shiny Buff Extra", "Gel Polish Coating Extra", \
#   "Gel French Extra", "Wrapping Need Extra", "Acrylic on Toe", "Gel Toes Soak-Off", "Cutting Down"].each do |product|
#     Category.find(4).products.create(name: product)
# end
