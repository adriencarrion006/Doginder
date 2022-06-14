class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end
  def show
    @dog = Dog.find(params[:id])
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)
    @dog.user_id = current_user.id
    if @dog.save
      redirect_to dog_path(@dog)
    else
      render :new
    end
  end
  def edit

  end
  def update

  end

  def destroy

  end

  private

  def dog_params
    params.require(:dog).permit(:name, :breed, :description, :location_cp, :user_id)
  end
end
