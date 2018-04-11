class DogsController < ApplicationController

  def index
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end



  private

  def dog_params
    params.require(:dog).permit(:name, :age, :breed)
  end

end
