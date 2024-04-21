class AddColumns < ActiveRecord::Migration[7.1]
  def change
    remove_column :foods, :water, :string
    remove_column :foods, :rice, :string
    remove_column :foods, :food, :string
    remove_column :foods, :can, :string
    remove_column :foods, :seasonal, :string
    remove_column :foods, :ramen, :string
    remove_column :foods, :snack, :string
    add_column :posts, :water, :string
    add_column :posts, :rice, :string
    add_column :posts, :food, :string
    add_column :posts, :can, :string
    add_column :posts, :seasonal, :string
    add_column :posts, :ramen, :string
    add_column :posts, :snack, :string
  end
end
