class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.string :user_id, null: false
      t.string :prototype_id, null: false
      t.timestamps null: false
    end
  end
end
