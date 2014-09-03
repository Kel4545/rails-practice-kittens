class KittenCategoriesController < ApplicationController

  def new
   @kitten_category = KittenCategory.new
  end
end