# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
# require 'pry'
def key_for_min_value(name_hash)
  current_low=nil
  key=nil
    if name_hash.empty?
      return nil
    else name_hash.collect do |name, quantity|
        if current_low == nil
          current_low = quantity
          key = name
        elsif quantity < current_low
          current_low=quantity
          key=name
          # binding.pry
        else
          key
        end
      end
    end
    key
end
