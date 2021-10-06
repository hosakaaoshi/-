class CreatePublicUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :public_users do |t|

      t.timestamps
    end
  end
end
