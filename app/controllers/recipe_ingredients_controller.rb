class RecipeIngredientsController < ApplicationController
  before_action :set_recipe_ingredient, only: [:show, :update, :destroy]

  # GET /recipe_ingredients
  # GET /recipe_ingredients.json
  def index
    @recipe_ingredients = RecipeIngredient.all

    render json: @recipe_ingredients
  end

  # GET /recipe_ingredients/1
  # GET /recipe_ingredients/1.json
  def show
    render json: @recipe_ingredient
  end

  # POST /recipe_ingredients
  # POST /recipe_ingredients.json
  def create
    @recipe_ingredient = RecipeIngredient.new(recipe_ingredient_params)

    if @recipe_ingredient.save
      render json: @recipe_ingredient, status: :created, location: @recipe_ingredient
    else
      render json: @recipe_ingredient.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /recipe_ingredients/1
  # PATCH/PUT /recipe_ingredients/1.json
  def update
    @recipe_ingredient = RecipeIngredient.find(params[:id])

    if @recipe_ingredient.update(recipe_ingredient_params)
      head :no_content
    else
      render json: @recipe_ingredient.errors, status: :unprocessable_entity
    end
  end

  # DELETE /recipe_ingredients/1
  # DELETE /recipe_ingredients/1.json
  def destroy
    @recipe_ingredient.destroy

    head :no_content
  end

  private

    def set_recipe_ingredient
      @recipe_ingredient = RecipeIngredient.find(params[:id])
    end

    def recipe_ingredient_params
      params.require(:recipe_ingredient).permit(:id, :ingredient, :measure, :amount, :recipe_id)
    end
end
