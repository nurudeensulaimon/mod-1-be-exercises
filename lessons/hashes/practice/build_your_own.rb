# Your turn to create a hash. Make sure to use symbols for the keys.

# Create your hash here
Hash.new(0)
stock_prices = {"TSLA" => 100, "NVDA" => 340, "COIN" => 1g00,"GSIT"=>5}

# Steps
# 1. Create a hash called new_band.
Hash.new()
new_band = {}
# 2. Add a bassist to your new_band hash.
new_band[:bassit]
# 3. Find the name of your bassist by accessing the 
#:bassist key in the new_band hash.
new_band.keys
# 4. Find the value attached to :vocalist in your hash.
new_band[:vocalist]
# 5. Add a vocalist to your hash.
new_band[:vocalist] += 1 
# 6. Add a drummer to your hash.
new_band[:drummer] += 1 
# 7. Get all the keys in your Hash. What kind of object does that method return?
new_band.keys 
# 8. Get all the values in your Hash. What kind of object does that method return?
new_bands.values 
# 9. Assign a new value to the :vocalist key of your hash.
new_band:vocalist += 1
# 10. How has keys changed after the last step? How has values changed?
require 'pry'; binding.pry 
