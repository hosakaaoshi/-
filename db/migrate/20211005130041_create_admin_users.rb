class CreateAdminUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :admin_users do |t|
      t.string :name
      t.string :email
      t.string :phon
      t.string :address
      t.string :password
      t.text :image
      t.datetime :create_at
      t.datetime :update_at
      t.timestamps
    end
  end
end
