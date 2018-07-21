def pet_shop_name(shop)
  return shop[:name]
end


def total_cash(shop)
  return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, amount)
  shop[:admin][:total_cash] += amount
  return shop[:admin][:total_cash]
end


def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, amount)
  shop[:admin][:pets_sold] += amount
  return shop[:admin][:pets_sold]
end

def stock_count(shop)
  return shop[:pets].count
end

def pets_by_breed(shop, breed)
  pets = []
  for shop[:pets] in shop[:pets]
    if shop[:pets][:breed] == breed
      pets << shop[:pets][:breed]
    end
  end
  return pets
end


def find_pet_by_name(shop, name)
  for shop[:pets] in shop[:pets]
    if shop[:pets][:name] == name
    return shop[:pets]
    end
    return nil
  end
end
#NoMethodError: undefined method `[]' for nil:NilClass

def add_pet_to_stock(shop, new_pet)
  shop[:pets] << new_pet
end


def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, amount)
  customer[:cash] -= amount
  return customer[:cash]
end

def customer_pet_count(customer)
  return customer[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
end

def customer_can_afford_pet(customer, pet)
  if customer[:cash] > pet[:price]
    return true
  else return false
  end
end
