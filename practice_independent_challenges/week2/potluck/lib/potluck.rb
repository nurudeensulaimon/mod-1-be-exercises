require 'pry'
require './lib/dish'
require './lib/potluck'

class Potluck 
  attr_reader :date,
              :dishes
  def initialize(date)
    @date = date 
    @dishes = []
  end 

  def add_dish(dish)
    @dishes << dish
    @dishes.length
  end 

   def get_all_from_category(category)
    arr = []
    @dishes.each do |dish|
      if dish.category == category
        arr << dish
      end 
    end 
      arr 
  end 

  def menu
    menu = {}
    binding.pry
    @dishes.each do |dish|
  if dish.category ==category
    menu[category] = dish.name
  end   
end 
end   
end 
  