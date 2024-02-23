class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.save
    if @list.save
      redirect_to list_path(@list), notice: "list was successfully created."
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def show
    @list = List.find(params[:id])
  end

  def movie
    @movies = Movie.all
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name, :photo)
  end
end
