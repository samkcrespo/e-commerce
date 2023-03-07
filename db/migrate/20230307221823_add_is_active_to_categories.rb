class AddIsActiveToCategories < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :isActive, :boolean
  end
end
