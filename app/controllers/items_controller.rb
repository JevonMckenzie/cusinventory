class ItemsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_item, only: [:show, :edit, :update, :destroy]
    before_action :admin_required

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def allitem
   @items = Item.all
  end

  def edit
  end

  def create
   params[:item][:remaining_quantity] = params[:item][:quantity]
    @item = Item.new(item_params)
   #params[:item][:quantity] = Item.where(:name => item.name).count(:name)
    if @item.save
      redirect_to :root, notice: 'Item was successfully created.'
    else
      render :new
    end
  end

  def update
    if @item.update(item_params)
      redirect_to :root, notice: 'Item was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @item.destroy
    redirect_to items_url, notice: 'Item was successfully destroyed.'
  end

  private
  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :consumable, :category, :quantity, :description, :remaining_quantity, :price, :serial)
  end
end
