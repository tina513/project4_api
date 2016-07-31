class LikeRecipesController < ApplicationController
  before_action :set_like_recipe, only: [:show, :update, :destroy]

  # GET /like_recipes
  # GET /like_recipes.json
  def index
    @like_recipes = LikeRecipe.all

    render json: @like_recipes
  end

  # GET /like_recipes/1
  # GET /like_recipes/1.json
  def show
    render json: @like_recipe
  end

  # POST /like_recipes
  # POST /like_recipes.json
  def create
    @like_recipe = LikeRecipe.new(like_recipe_params)

    if @like_recipe.save
      render json: @like_recipe, status: :created, location: @like_recipe
    else
      render json: @like_recipe.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /like_recipes/1
  # PATCH/PUT /like_recipes/1.json
  def update
    @like_recipe = LikeRecipe.find(params[:id])

    if @like_recipe.update(like_recipe_params)
      head :no_content
    else
      render json: @like_recipe.errors, status: :unprocessable_entity
    end
  end

  # DELETE /like_recipes/1
  # DELETE /like_recipes/1.json
  def destroy
    @like_recipe.destroy

    head :no_content
  end

  private

    def set_like_recipe
      @like_recipe = LikeRecipe.find(params[:id])
    end

    def like_recipe_params
      params.require(:like_recipe).permit(:profile_id, :recipe_id)
    end
end
