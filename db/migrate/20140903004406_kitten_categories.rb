class KittenCategories < ActiveRecord::Migration
  def change
    create_table :kitten_categories do |t|
      t.string :kitten_id
      t.string :category
    end
  end
end
