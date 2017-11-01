# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'stores.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'UTF-8')
csv.each do |row|
  t = Store.new
  t.name = row['name']
  t.location = row['location']
  t.number = row['number']
  t.time = row['time']
  t.image = row['image']
  t.save
end

csv_text = File.read(Rails.root.join('lib', 'seeds', 'finds.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'UTF-8')
csv.each do |row|
  t = Find.new
  t.menu = row['name']
  t.menu_price = row['price']
  t.store = Store.find(row['num_id'])  

  t.save
end
