# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

coop_buildings = [
  ["185 Clinton","North"],
  ["193 Clinton","North"],
  ["201 Clinton","North"],
  ["xxx Clinton","North"],
  ["xxx Clinton","North"],
  ["xxx Clinton","North"],
  ["xxx Clinton","North"],
  ["325 Clinton","South"],
  ["345 Clinton","South"],
  ["355 Clinton","South"],
  ["361 Clinton","South"],
  ["365 Clinton","South"],
]

coop_buildings.each do |building, north_south|
  Building.create(name:building, campus:north_south)
end


# Building.create(name:"201 Clinton", campus:"North")
# Building.create(name:"193 Clinton", campus:"North")
# Building.create(name:"185 Clinton", campus:"North")
# Building.create(name:"xxx Clinton", campus:"North")
# Building.create(name:"xxx Clinton", campus:"North")
# Building.create(name:"xxx Clinton", campus:"North")
# Building.create(name:"xxx Clinton", campus:"North")
# Building.create(name:"325 Clinton", campus:"South")
# Building.create(name:"345 Clinton", campus:"South")
# Building.create(name:"355 Clinton", campus:"South")
# Building.create(name:"361 Clinton", campus:"South")
# Building.create(name:"365 Clinton", campus:"South")


