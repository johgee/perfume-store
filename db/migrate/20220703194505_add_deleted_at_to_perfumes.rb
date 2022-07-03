class AddDeletedAtToPerfumes < ActiveRecord::Migration[7.0]
  def change
    add_column :perfumes, :deleted_at, :datetime
  end
end
