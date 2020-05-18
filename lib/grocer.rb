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
  cart.each do |item_overview|
    item_overview[:count] = 1
    item_overview.each do |attribute, data|
      if receipt.include?(item_overview[:item])
        receipt[:count] ++ 1
      else
        receipt << item_overview
      end
    end
  end
end


  