class AddIndexImagePrototypeId < ActiveRecord::Migration
  def change
    add_index :images, :prototype_id
  end
end

