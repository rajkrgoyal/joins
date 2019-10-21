class CreateContracts < ActiveRecord::Migration[5.2]
  def change
    create_table :contracts do |t|
      t.references :team, foreign_key: true
      t.references :player, foreign_key: true
      t.integer :term
      t.integer :deal_value

      t.timestamps
    end
  end
end
