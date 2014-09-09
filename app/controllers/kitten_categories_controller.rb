class KittenCategoriesController < ApplicationController

  def show
    @kitten = Kitten.all
  end

  def new
   @kitten_category = KittenCategory.new
  end

  def create
    @kitten_category = KittenCategory.new(
      category: params[:kitten_category][:category])

    if @kitten_category.save
      flash[:error] = "Kitten Category has already been taken"
      redirect_to root_path
    end
  end
end