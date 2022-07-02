class CreateCollections < ActiveRecord::Migration[7.0]
  def change
    create_table :collections do |t|
      t.string :name
      t.string :description
      t.integer :perfume_id

      t.timestamps
    end
  end
end
