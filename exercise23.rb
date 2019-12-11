#!/usr/bin/env ruby

puts "Enter you numbers:"
input_number = gets.chomp 

list = input_number.split("").sort

puts "#{list}"