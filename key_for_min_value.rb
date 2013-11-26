# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, 
#return the key for the smallest value
#key_for_min_value({:blake => 500, :ashley => 2, :adam => 1}).should eq(:adam)

def key_for_min_value(hash={})
	hash.key(hash.values.min)
end

key_for_min_value({:blake => 500, :ashley => 2, :adam => 1})
