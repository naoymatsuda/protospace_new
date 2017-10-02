class ChangeLikesCountToPrototype < ActiveRecord::Migration
  def change
    change_column :prototypes, :likes_count, :integer
  end
end
