class AddColumnss < ActiveRecord::Migration[7.1]
  def change
    remove_column :posts, :water, :string
    remove_column :posts, :rice, :string
    remove_column :posts, :food, :string
    remove_column :posts, :can, :string
    remove_column :posts, :seasonal, :string
    remove_column :posts, :ramen, :string
    remove_column :posts, :snack, :string
    add_column :posts, :water, :integer
    add_column :posts, :rice, :integer
    add_column :posts, :food, :integer
    add_column :posts, :can, :integer
    add_column :posts, :seasonal, :integer
    add_column :posts, :ramen, :integer
    add_column :posts, :snack, :integer
    add_column :posts, :wettissue, :integer
    add_column :posts, :spray, :integer
    add_column :posts, :mask, :integer
    add_column :posts, :box, :integer
    add_column :posts, :medicine, :integer
    add_column :posts, :toilet, :integer
    add_column :posts, :period, :integer
    add_column :posts, :wrappingfilm, :integer
    add_column :posts, :plasticbags, :integer
    add_column :posts, :plasticgloves, :integer
    add_column :posts, :toiletpaper, :integer
    add_column :posts, :tissue, :integer
    add_column :posts, :light, :integer
    add_column :posts, :battery, :integer
    add_column :posts, :tape, :integer
    add_column :posts, :waterbag, :integer
  end
end
