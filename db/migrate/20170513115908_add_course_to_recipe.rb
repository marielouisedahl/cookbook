class AddCourseToRecipe < ActiveRecord::Migration[5.1]
  def change
    add_column :recipes, :course, :string
  end
end
