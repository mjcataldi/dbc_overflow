class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.integer :id, null:false
      t.integer :user_id, null:false
      t.references :voteable, polymorphic: true, index: true
      t.integer :value, null:false

      t.timestamps
    end
  end
end
