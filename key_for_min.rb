# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  current_low=nil
  key=[]
  name_hash.collect do |name, quantity|
    if current_low=nil
      current_low=quantity
    elsif quantity < current_low
      current_low=quantity
      key=name
    end
  end
end
