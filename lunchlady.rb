
require "pry"
require "colorize"

$cart = []
$total = []

class Cashier
  def initialize
    puts " "
    puts " So that's:"
    $cart.each do |cart|
      puts cart
    end
    puts " "
    puts " Your total comes too:"
    total = $total.sum
    print "$"
    puts total
    puts "--- Swipe Card ---"
    if total >= 10
      working
      puts "Declined"
    elsif total <= 10
      working
      puts "Approved"
      puts "Thank You"
    end
  end
  
  def working
    print "."
    sleep(1)
    print "."
    sleep(1)
    print "."
    sleep(1)
  end
end

class Menu
  puts "Welcome to The Lunchroom!"
  puts "I'm the Lunch Lady"
  puts "What would you like to order?"
end

class Main
  def initialize
    @items = ["Beef - $7",  "Chicken - $5", "Pork - $6"]
    @items.each do |items|
      puts items 
    end
    main_choice
  end
  
  def main_choice
    choice = gets.strip
    case choice
      when "Beef"
        $cart.push("Beef")
        $total.push(7)
      when "Chicken"
        $cart.push("Chicken")
        $total.push(5)
      when "Pork"
        $cart.push("Pork")
        $total.push(6)
      else
        puts "Invalid Choice"
        main_choice
    end
  end
end
  
class Side
  def initialize
    @items = ["Corn - $1", "Beans - $1", "Chef Rice - $2"]
    @items.each do |items|
      puts items 
    end
    side_choice
  end
  
  def side_choice
    choice = gets.strip
    case choice
      when "Corn"
        $cart.push("Corn")
        $total.push(1)
      when "Beans"
        $cart.push("Beans")
        $total.push(1)
      when "Chef Rice"
        $cart.push("Rice")
        $total.push(2)
      else
        puts "Invalid Choice"
        side_choice
    end
  end
end


Menu.new
Main.new
puts "What side item would you like?"
Side.new
puts "What other side item would you like?"
Side.new
Cashier.new