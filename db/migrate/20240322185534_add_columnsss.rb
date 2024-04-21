class AddColumnsss < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :alumi, :integer
  end
end
