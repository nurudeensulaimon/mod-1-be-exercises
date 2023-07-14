suitcase = {
  "socks" => 4,
  "pants" => 1
}

# How would we get the value of:

# 1. "socks"
suitcase["sock"]
# 2. "pants"
suitcase["pant"]
# 3. All of the values in this hash.
suitcase["sock","pant"]

# How would we get the keys of the above hash?
suitcase.keys
suitcase.keys