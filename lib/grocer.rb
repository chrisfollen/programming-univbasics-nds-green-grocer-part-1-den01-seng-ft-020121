def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  hash_out = nil
  i = 0
  while i < collection.length do
    if collection[i][:item] == name
      hash_out = collection[i]
    end
    i += 1
  end
  hash_out
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  cart_out = []
  i = 0 
  while i < cart.length do 
    name = cart[i][:item]
    if find_item_by_name_in_collection(name, cart_out) == nil
      temp_hash = cart[i]
      temp_hash[:count] = 1
      cart_out.push(temp_hash)
    else 
      temp_index = cart_out.find_index{|x| x[:item]==name}
      cart_out[temp_index][:count] += 1 
    end
    cart_out
end


  