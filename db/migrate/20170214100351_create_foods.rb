class CreateFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :foods do |t|
      t.string :ingredient
      t.string :spice
      t.string :measurement

      t.timestamps
    end
  end
end
