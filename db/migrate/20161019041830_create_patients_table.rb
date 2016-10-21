class CreatePatientsTable < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :phone
    end
  end
end
