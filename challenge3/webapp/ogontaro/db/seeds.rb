# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

p 'seed creating...'

p 'house data creating...'
CSV.foreach('./db/fixture/house_data.csv', headers: true) do |row|
  House.find_or_create_by(id: row['id'],
                          first_name: row['Firstname'],
                          last_name: row['Lastname'],
                          city: row['City'],
                          num_of_people: row['num_of_people'],
                          has_child: row['has_child'] == 'Yes')
end
p 'house data created'

p 'energy data creating...'
CSV.foreach('./db/fixture/dataset_50.csv', headers: true) do |row|
  Energy.find_or_create_by(id: row['id'],
                           label: row['Label'],
                           house_id: row['House'],
                           year: row['Year'],
                           month: row['Month'],
                           date: Date.new(row['Year'].to_i, row['Month'].to_i, 1),
                           temperature: row['Temperature'],
                           daylight: row['Daylight'],
                           energy_production: row['EnergyProduction'])
end
p 'energy data created'

p 'seed created'
