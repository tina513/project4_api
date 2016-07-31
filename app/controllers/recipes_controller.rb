class RecipesController < ProtectedController
  before_action :set_recipe, only: [:show, :update, :destroy]
  # before_action :check_validation,:only => [:create]

  # GET /recipes
  # GET /recipes.json
  def index
    @recipes = Recipe.all

    render json: @recipes
  end

  # GET /recipes/1
  # GET /recipes/1.json
  def show
    render json: @recipe
  end

  # POST /recipes
  # POST /recipes.json
  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.recipe_ingredients.build

    current_user.recipes << @recipe

    if @recipe.save
      render json: @recipe, status: :created, location: @recipe
    else
      render json: @recipe.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /recipes/1
  # PATCH/PUT /recipes/1.json
  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      # @recipe_ingredients = @recipe.recipe_ingredients.select(|k,v| k==recipe_id)
      # @recipe_ingredient = RecipeIngredient.find(params[:id])
      # @recipe_ingredient.update(recipe_ingredient_params)
      head :no_content
    else
      render json: @recipe.errors, status: :unprocessable_entity
    end
  end

  # DELETE /recipes/1
  # DELETE /recipes/1.json
  def destroy
    @recipe.destroy

    head :no_content
  end

  private

    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    def recipe_params
      params.require(:recipes)
            .permit(:name, :category, instructions: [], recipe_ingredients_attributes: [:id, :recipe_id, :ingredient, :measure, :amount])
    end

end
