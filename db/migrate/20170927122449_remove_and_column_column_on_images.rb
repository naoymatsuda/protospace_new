class RemoveAndColumnColumnOnImages < ActiveRecord::Migration
  def change
  	remove_column :images, :image, :string
    add_column    :images, :image, :string, default: 0, after: :id
  end
end
