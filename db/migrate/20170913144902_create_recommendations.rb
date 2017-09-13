class CreateRecommendations < ActiveRecord::Migration[5.1]
  def change
    create_table :recommendations do |t|
      t.string :name
      t.text :description
      t.string :url
      t.integer :calls
      t.integer :ranking
      t.boolean :private
      t.references :subcategory, foreign_key: true
    end
  end
end
