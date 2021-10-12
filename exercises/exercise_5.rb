require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"


store = Store.all;

puts store.sum(:annual_revenue)
puts store.average(:annual_revenue)
puts store.where('annual_revenue >= ?', 1000000).count()
