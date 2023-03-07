class AddImageToCategories < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :cat_image, :text
  end
end
