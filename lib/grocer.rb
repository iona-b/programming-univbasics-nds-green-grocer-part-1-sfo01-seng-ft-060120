require 'pry'

def find_item_by_name_in_collection(name, collection)
  collection.each do |key|
    key.each do |item, item_name|
      if item_name == name
        return key
      end
    end
  end
  return nil
end

def consolidate_cart(cart)
  receipt = []
  cart.each do |item_details|
    unless receipt.include?(item_details)
      receipt << item_details
      item_details[:count] = 1
      #binding.pry
    else
      item_details[:count] += 1
    end
  end
      
    #item_details[:count] = 1
    #item_details.each do |attribute, data|
      #binding.pry
      #if receipt.include?(item_details)
        #receipt[:count] ++ 1
      #else
        #receipt << item_details
      #end
    #end
  #end
  #return receipt
end


  