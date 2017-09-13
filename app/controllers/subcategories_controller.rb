class SubcategoriesController < ApplicationController
   before_action :find_category, only: [:index, :new, :create]

   def index
      @subcategories = @category.subcategories.all
   end

   def new
      @subcategory = Subcategory.new
   end

   def create
      @subcategory = Subcategory.new(subcategory_params)
      @subcategory.category_id = @category.id
      if @subcategory.save
         redirect_to category_subcategories_path
      end
   end

   def find_category
      @category = Category.find(params[:category_id])
   end

   private
   def subcategory_params
      params.require(:subcategory).permit(:name, :description)
   end

end
