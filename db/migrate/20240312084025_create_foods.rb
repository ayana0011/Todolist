class CreateFoods < ActiveRecord::Migration[7.1]
  def change
    create_table :foods do |t|
      t.text :item
      t.text :number

      t.timestamps
    end
  end
end
