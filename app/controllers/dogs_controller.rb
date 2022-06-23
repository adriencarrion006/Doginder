class DogsController < ApplicationController
  def index
    dogs = Dog.where.not(user_id: current_user.id).where(like: nil)
    if params[:query].blank? && params[:queryinterest].nil?
      @dogs = dogs
    elsif params[:query].blank? && params[:queryinterest].first.blank?
      @dogs = dogs
    elsif !params[:query].blank? && params[:queryinterest].first.present?
      @dogs = dogs.where(centre_interet: params[:queryinterest].first).where(location_cp: params[:query])
    elsif !params[:query].blank?
      @dogs = dogs.where(location_cp: params[:query])
    elsif params[:queryinterest].first.present?
      @dogs = dogs.where(centre_interet: params[:queryinterest].first)
    else
      @dogs = []
    end
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
    @dog = Dog.find(params[:id])
    params[:like] === "true" ? like = true : like = false
    @dog.update(like: like)
  end
  def update
    @dog = Dog.find(params[:id])
    if @dog.update(dog_params)
      redirect_to dogs_path(@dog)
    else
      render :edit
    end

  end

  def destroy
    if @dog.destroy
      redirect_to dogs_path(@dog)
    else
      render :index
    end

  end
  private

  def dog_params


    params.require(:dog).permit(:name, :breed, :description, :location_cp, :user_id, :like, :centre_interet, photos: [])

  end
end
