# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

PROJECTS_TITLES = 10.times.map{ Faker::Internet.domain_word }
OFFSET = (PROJECTS_TITLES.length) * 0.4

PROJECTS_USERS = {
  'email1@email.com' => PROJECTS_TITLES[0, OFFSET],
  'email2@email.com' => PROJECTS_TITLES[OFFSET..-1]
}

PROJECTS_USERS.each do |email, projects|
  user = User.new(email: email, password:'secret')
  projects.each {|title| user.projects.build(title: title)}
  user.save
end
