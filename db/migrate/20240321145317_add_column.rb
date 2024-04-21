class AddColumn < ActiveRecord::Migration[7.1]
  def change
    add_column :foods, :water, :string
    add_column :foods, :rice, :string
    add_column :foods, :food, :string
    add_column :foods, :can, :string
    add_column :foods, :seasonal, :string
    add_column :foods, :ramen, :string
    add_column :foods, :snack, :string
  end
end
