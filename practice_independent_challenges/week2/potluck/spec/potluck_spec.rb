require './lib/dish'
require './lib/potluck'

RSpec.describe Potluck do 
  before(:each) do 

   @potluck=Potluck.new("7-13-18")
   @couscous_salad = Dish.new("Couscous Salad", :appetizer)
   @cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
   @summer_pizza = Dish.new("Summer Pizza", :appetizer)
   @roast_pork = Dish.new("Roast Pork", :entre)
   @candy_salad = Dish.new("Candy Salad", :dessert)
   @bean_dip = Dish.new("Bean Dip", :appetizer)
  end 

  it "exists as an object" do 
    expect(@potluck).to be_an_instance_of(Potluck)
  end

  it "has attribute" do 
    expect(@potluck.date).to eq("7-13-18")
  end 

  it "has dishes that are empty" do
    expect(@potluck.dishes).to eq([])
  end 

  it "has a method add_dish" do 

    @potluck.add_dish(@couscous_salad)
    @potluck.add_dish(@cocktail_meatballs)

    expect(@potluck.dishes).to eq([@couscous_salad,@cocktail_meatballs])
    expect(@potluck.dishes.length).to eq(2)
  end
   
   it "has a method get_all_from_category" do 

    @potluck.add_dish(@couscous_salad)
    @potluck.add_dish(@summer_pizza)
    @potluck.add_dish(@roast_pork)
    @potluck.add_dish(@cocktail_meatballs)
    @potluck.add_dish(@candy_salad)

    expect(@potluck.get_all_from_category(:appetizer)).to eq([@couscous_salad,@summer_pizza])
    expect(@potluck.get_all_from_category(:appetizer).first).to eq(@couscous_salad)
    expect(@potluck.get_all_from_category(:appetizer).first.name).to eq("Couscous Salad")
    end 

    it "has a menu" do 
      @potluck.add_dish(@couscous_salad)
      @potluck.add_dish(@summer_pizza)
      @potluck.add_dish(@roast_pork)
      @potluck.add_dish(@cocktail_meatballs)
      @potluck.add_dish(@candy_salad)
      @potluck.add_dish(@bean_dip)

      expected = {:appetizers => ["Bean Dip", "Couscous Salad", "Summer Pizza"],
        :entres => ["Cocktail Meatballs", "Roast Pork"], :desserts=>["Candy Salad"]}
        expect(@potluck.menu).to eq(expected)
      end
    end 