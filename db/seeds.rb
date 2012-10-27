# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Event.create(
    title: 'Hackathon',
    start: 3.hours.ago,
    end: Time.new,
    location: "Coworking Space"
)

Event.create(
    title: 'Hackathon 2',
    start: 1.day.from_now,
    end: 2.days.from_now,
    location: "Coworking Space"
)