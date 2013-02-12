# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create :email => 'joshuarpf@gmail.com', :password => 'pass123'

profile = Profile.create :name => "Joshua Fuentes", :twitter => "JoshuaRaphaelPF"

user.profile = profile