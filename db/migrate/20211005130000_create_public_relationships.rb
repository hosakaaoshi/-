class CreatePublicRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :public_relationships do |t|

      t.timestamps
    end
  end
end
