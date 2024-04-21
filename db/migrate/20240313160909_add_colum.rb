class AddColum < ActiveRecord::Migration[7.1]
  def change
   add_column :likes , :food_id , :string
   add_column :likes , :sanitary_id , :string
   add_column :likes , :household_id , :string
  end
end
