class CatsController < ApplicationController
  def index
    @cats = Cat.all
  end

  def new
    @cat = Cat.new
  end

  def show
    @cat = Cat.find(params[:id])
  end

  def create
    # @cat = Cat.new(cat_params)
    # @cat.save

    @cat = Cat.create(cat_params)

    redirect_to cats_path
  end

  def update
    @cat = Cat.find(params[:id])
    @cat.update(cat_params)

    redirect_to cats_path
  end

  def edit
    @cat = Cat.find(params[:id])
  end

  def destroy
    @cat = Cat.find(params[:id])
    @cat.destroy

    redirect_to cats_path
  end

  private

  def cat_params
    params.require(:cat).permit(:legs, :color, :location, :age, :adopted)
  end
end
