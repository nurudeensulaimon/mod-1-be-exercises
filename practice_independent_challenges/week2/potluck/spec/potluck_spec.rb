require 'spec_helper'
describe Potluck do
    it 'exists' do
        potluck=Potluck.new("7-13-18")
        expect(potluck).to be_a(Potluck)
        expect(potluck.date).to eq("7-13-18")
        expect(potluck.dishes).to eq([])

    end
    it "can make dishes" do
        couscous_salad = Dish.new("Couscous Salad", :appetizer)
        cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
        expect(couscous_salad).to be_a(Dish)
        expect(cocktail_meatballs).to be_(Dish) 
    end
    it "can add dishes"
        potluck.add_dish(couscous_salad)
        potluck.add_dish(cocktail_meatballs)
        expect(potluck.dishes).to eq([couscous_salad],[cocktail_meatballs])
    end   
end  