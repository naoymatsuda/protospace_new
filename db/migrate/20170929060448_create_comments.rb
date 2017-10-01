class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :text, null: false
      t.string :user_id, null: false
      t.string :prototype_id, null: false
      t.timestamps null: false
    end
  end
end
