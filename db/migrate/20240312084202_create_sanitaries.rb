class CreateSanitaries < ActiveRecord::Migration[7.1]
  def change
    create_table :sanitaries do |t|
      t.text :item
      t.text :number

      t.timestamps
    end
  end
end
