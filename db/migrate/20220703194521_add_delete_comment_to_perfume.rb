class AddDeleteCommentToPerfume < ActiveRecord::Migration[7.0]
  def change
    add_column :perfumes, :delete_comment, :string
  end
end
