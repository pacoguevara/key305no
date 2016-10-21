class CreateNutritionists < ActiveRecord::Migration
  def change
    create_table :nutritionists do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :phone
    end
  end
end
