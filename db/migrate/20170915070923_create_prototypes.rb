class CreatePrototypes < ActiveRecord::Migration
  def change
    create_table :prototypes do |t|
      t.string :title, null: false
      t.string :user_id, null: false
      t.string :catch_copy, null: false
      t.string :concept, null: false

      t.timestamps null: false
    end
  end
end
