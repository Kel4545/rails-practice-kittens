class KittenCategoriesController < ApplicationController

  def show
    @kitten = Kitten.all
  end

  def new
   @kitten_category = KittenCategory.new
  end

  def create
      @kitten_category = KittenCategory.new(kitten_id: params[:id], category_id: params[:kitten_category][:category_id])
      if @kitten_category.save
        redirect_to root_path
      else
       flash[:notice] = "category can't be blank"
        redirect_to kitten_path(:id => params[:kitten_id])
      end
    end


  end
