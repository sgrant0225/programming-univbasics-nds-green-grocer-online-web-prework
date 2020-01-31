def find_item_by_name_in_collection(name, collection)
 row_index = 0 
 while row_index < collection.length do 
   if collection[row_index][:item] == name
     return collection[row_index]
 end
   row_index += 1 
   end
 end

def consolidate_cart(cart)
   new_array = []
   counter = 0 
   while counter < cart.length do 
   new_cart = find_item_by_name_in_collection(cart[counter][:item], new_array)
    if new_cart != nil
     new_cart[:count] += 1 
   else
     new_cart = {
       :item => cart[counter][:item],
       :price => cart[counter][:price],
       :clearance => cart[counter][:clearance],
       :count => 1
       }
      new_array << new_cart
      end
      counter += 1 
 end    
 new_array
end

def apply_coupons(cart, coupons)
  counter = 0 
  while counter < coupons.length
  cart_item = find_item_by_name_in_collection(coupons[counter][:item], cart)
  couponed_item_name = "#{coupons[counter][:item]} W/COUPON"
  cart_item_with_coupon = find_item_by_name_in_collection(couponed_item_name, cart)
  counter += 1
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
