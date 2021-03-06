# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# schools_data_file = "#{Rails.root}/data/schools.json"
schools_data_file = "#{Rails.root}/data/schools_small.json"

schools = JSON.parse(File.read(schools_small))
schools.each do |school|
  School.create!(school.slice(:city, :state, :description))
end
