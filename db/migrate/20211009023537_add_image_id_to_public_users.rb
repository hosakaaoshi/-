class AddImageIdToPublicUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :public_users, :image_id, :string
  end
end
