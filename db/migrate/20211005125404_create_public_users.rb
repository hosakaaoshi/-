class CreatePublicUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :public_users do |t|
      t.integer :user_id
       t.string :name
      t.string :email
      t.string :phon
      t.string :address
      t.string :password
      t.text :image

      t.timestamps
    end
  end
end
