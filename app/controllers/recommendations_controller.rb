class RecommendationsController < ApplicationController
   before_action :find_subcategory, only: [:index, :new, :create]
   before_action :find_category, only: [:new, :create]

   def index
      @recommendations = @subcategory.recommendations.all
   end

   def new
      @recommendation = Recommendation.new
   end

   def create
      @recommendation = Recommendation.new(recommendation_params)
      @recommendation.subcategory_id = @subcategory.id
      if @recommendation.save
         redirect_to category_subcategory_recommendations_path
      end
   end

   private
   def recommendation_params
      params.require(:recommendation).permit(:name, :description, :url, :private)
   end

   def find_subcategory
      @subcategory = Subcategory.find(params[:subcategory_id])
   end

   def find_category
      @category = Category.find(params[:category_id])
   end

end
