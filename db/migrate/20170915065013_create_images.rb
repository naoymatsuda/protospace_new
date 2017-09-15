class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :image, null: false
      t.string :prototype_id, null: false
      t.integer :status, null:false
      t.timestamps null: false
    end
  end
end
