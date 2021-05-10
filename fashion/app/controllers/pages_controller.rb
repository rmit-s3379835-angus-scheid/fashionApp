class PagesController < ApplicationController

  def home
    @all_items = Item.all
  end

  def new
    @item = Item.new
  end

  def show
    @item = Item.find(params[:name])
  end

  #My own create function
  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to @item
  end

  #private
  #def item_params
  #  params.require(:item).permit(:title, :text)
  #end



end
