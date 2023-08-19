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
    the_menu = Hash.new {|hash_obj, key| hash_obj[key] = []}
    appetizers = get_all_from_category(:appetizer).map {|dish| dish.name}
    appetizers.each do |appetizer|
      the_menu[:appetizers] << appetizer
    end
    desserts = get_all_from_category(:dessert).map {|dish| dish.name}
    desserts.each do |dessert|
      the_menu[:desserts] << dessert
    end
    entres = get_all_from_category(:entre).map {|dish| dish.name}
    entres.each do |entre|
      the_menu[:entres] << entre
    end
    the_menu
  end
end
  