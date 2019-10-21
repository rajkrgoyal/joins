class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.references :user, foreign_key: true
      t.references :category, foreign_key: true
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
