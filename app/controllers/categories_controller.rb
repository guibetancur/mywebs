class CategoriesController < ApplicationController
   def index
      @categories = Category.all
   end

   def new
      @category = Category.new
   end

   def create
      @category = Category.new(category_params)
      if @category.save
         redirect_to categories_path
      end
   end

   private
   def category_params
      params.require(:category).permit(:name, :description)
   end
end
