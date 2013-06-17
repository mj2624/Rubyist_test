#!/usr/bin/env ruby

class Takeaway

def initialize 
  @customer
end

def menu = 
  {   Pie_and_chips => 8,
      Steak_and_chips => 9,
      Egg_and_chips => 5,
  }
end

menu.each do|name,menu|
  puts "#{name}: £#{menu}"
end

def order (item, cost)
  @total = item {|sum (item,amount| sum + menu[item] * amount}
    puts "please pay the balance" unless payment == total
end


