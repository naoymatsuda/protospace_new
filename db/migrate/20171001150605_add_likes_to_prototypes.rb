class AddLikesToPrototypes < ActiveRecord::Migration
  def change
    add_column :prototypes, :likes, :string
  end
end
