class CreatePerfumes < ActiveRecord::Migration[7.0]
  def change
    create_table :perfumes do |t|
      t.string :image
      t.string :brand
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
