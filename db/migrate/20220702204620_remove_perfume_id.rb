class RemovePerfumeId < ActiveRecord::Migration[7.0]
  def change
    remove_column :collections, :perfume_id, :integer
  end
end
