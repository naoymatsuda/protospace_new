class AddIndexPrototypeUserId < ActiveRecord::Migration
  def change
    add_index :prototypes, :user_id
  end
end
