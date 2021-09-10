class AddPolishNameToCategories < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :polish_name, :string
  end
end
