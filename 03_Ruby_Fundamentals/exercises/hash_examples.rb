#length
hash.length
Puts "gives you the length of a hash"


#.merge and merge!
hash.merge(hash1)
Puts "combines two hashes"

#select
hash.select {|k,v| k = "a"}
Puts "returns a boolean for the argument given to evaulate a hash"

#.keys
Puts "returns the pairs in a hash"
hash.keys
#.values
Puts "returns the values in a hash"
hash.values

#values_at
hash.values_at("a", "b")
Puts "returns an array with values for given keys"

#has_key?
hash.has_key?("a")
Puts "Returns a boolean depending if your hash has a key"
