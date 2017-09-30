class AddCommentPrototypeId < ActiveRecord::Migration
  def change
    add_index :comments, :prototype_id
  end
end
