class CreateFollows < ActiveRecord::Migration[5.2]
  def change
    create_table :follows do |t|
      t.references :follower, foreign_key: { to_table: 'users' }
      t.references :followee, foreign_key: { to_table: 'users' }

      t.timestamps
    end

    add_index :follows, [:follower_id, :followee_id], unique: true
  end
end
