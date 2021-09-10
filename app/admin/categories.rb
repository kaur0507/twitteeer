ActiveAdmin.register Category do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :polish_name
  controller do
    def destroy
      category = Category.find(params[:id])
      category.tweeets.each { |tweeet| tweeet.destroy }
      category.destroy
      redirect_to admin_categories_path
    end
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:name_en, :name_pl]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
