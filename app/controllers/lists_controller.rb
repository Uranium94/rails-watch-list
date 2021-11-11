class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def new
    @lists = List.new
  end

  def show
    @lists = List.find(params[:id])
  end

  def create
    @lists = List.new(list_params)
    if @list.save
      redirect_to list_path(@list), notice: 'List was successfuly created ;)'
    else
      render :new
    end
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end

end
