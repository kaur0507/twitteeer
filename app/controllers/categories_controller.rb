class CategoriesController < InheritedResources::Base

  def show
    category = Category.find(params[:id])
    @tweeets = category.tweeets
    @category_id = category.id
  end
  
  private

    def category_params
      params.require(:category).permit(:name)
    end

end
