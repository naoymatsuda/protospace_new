class RenameLikesColumnToPrototypes < ActiveRecord::Migration
  def change
    rename_column :prototypes, :likes, :likes_count
  end
end
