# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'date'

Day.destroy_all
p "days purged"
Habit.destroy_all
p "habits purged"
User.destroy_all
p "users purged"

anton_user = User.create(first_name: "Anton", email: "test@test.com", password: "password")

p User.last.first_name + " Created"

fasting_habit = Habit.new(name: "Healthy Diet Fasting")
fasting_habit.user = anton_user
p fasting_habit.save ? fasting_habit.name + " created" : "fail"

p "creating days..."
challange_length = 365
routine_start = Date.parse("1-APR-2021")
challange_length.times do |i|
  Day.create(day: routine_start + i)
end

p "Day creation complete"
p 'finish: ' + Day.last.day.to_s
