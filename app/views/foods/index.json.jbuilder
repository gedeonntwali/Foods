json.array! @foods.each do |food|
  json.id food.id
  json.ingredient food.ingredient
  json.spice food.spice
  json.measurement food.measurement
  
end