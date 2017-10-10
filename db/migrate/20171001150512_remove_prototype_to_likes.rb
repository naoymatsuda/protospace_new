class RemovePrototypeToLikes < ActiveRecord::Migration
  def change
    remove_column :likes, :likes, :string
  end
end
