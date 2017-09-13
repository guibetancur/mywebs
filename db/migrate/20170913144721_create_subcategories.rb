class CreateSubcategories < ActiveRecord::Migration[5.1]
  def change
    create_table :subcategories do |t|
      t.string :name
      t.text :description
      t.references :category, foreign_key: true
    end
  end
end
