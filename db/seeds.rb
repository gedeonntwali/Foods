100.times do
  Food.create(
    ingredient: Faker::Food.ingredient, 
    spice: Faker::Food.spice, 
    measurement: Faker::Food.measurement) 

  
end
