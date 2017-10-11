class AddPrototypeToLikes < ActiveRecord::Migration
  def change
    add_column :likes, :likes, :string
  end
end
