class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render 'index'
  end
  def show
    @recipe = Recipe.find(params[:id])
    render 'show'
  end
  def new
    @recipe = Recipe.new
    render 'new'
  end
  def edit
    @recipe = Recipe.find(params[:id])
    render 'edit'
  end
  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to @recipe, notice: 'Recipe was successfully created.'
    else
      render action: 'new'
    end
  end
  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      redirect_to @recipe, notice: 'Recipe was successfully updated.'
    else
      render action: 'edit'
    end
  end
  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipes_url, notice: 'Recipe was successfully destroyed.'
  end
  private
  # Only allow a trusted parameter "white list" through.
  def recipe_params
    params.require(:recipe).permit(:course, :name, :description, :picture)
  end

end
