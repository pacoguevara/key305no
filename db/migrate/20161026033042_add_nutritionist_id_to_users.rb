class AddNutritionistIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :nutritionist_id, :integer
  end
end
