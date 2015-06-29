class EditPostColumns < ActiveRecord::Migration
  def change
  	add_column :posts, :body, :text
    rename_column :posts, :link, :title
  end
end
