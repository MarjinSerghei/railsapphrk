class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :link
    end
  end
end
