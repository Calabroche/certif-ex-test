class TreesController < ApplicationController

  def index
    @trees = Tree.all
  end

  def show
    @tree = Tree.find(params[:id])
    @adoption = Adoption.new
    @adoptions = @tree.adoptions
  end

  def new
    @tree = Tree.new
  end

  def create
    @tree = Tree.new(trees_params)
    @tree.user = current_user
    if @tree.save!
      redirect_to tree_path(@tree), notice: "trees was successfully created."
    else
      render :new
    end
  end

  def edit
    @tree = Tree.find(params[:id])
  end

  def update
    @tree = Tree.find(params[:id])
    if @tree.update(trees_params)
      redirect_to tree_path(@tree), notice: "trees was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @tree = Tree.find(params[:id])
    @tree.destroy
    redirect_to tree_path, notice: "trees was successfully destroyed."
  end

  private

  def trees_params
    params.require(:tree).permit(:name, :address, :description, :price_per_year, :quantity_per_year, :fruit)
  end

end
