class AddCategoryIdToTweeets < ActiveRecord::Migration[6.1]
  def change
    add_column :tweeets, :category_id, :integer
  end
end
