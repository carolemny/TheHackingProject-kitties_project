class ItemsController < ApplicationController
  before_action :set_item, only: %i[ show edit update destroy ]

  def index
    @items = Item.all
  end

  def show
    puts "****************************************"
    puts @item.picture
    puts "****************************************"
  end

  def new
    @item = Item.new
  end

  def edit
  end

  def create
    @item = Item.create!(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: "Votre photo est déposée !" }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: "Votre photo est mise à jour" }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:title, :description, :price, :picture)
  end
end
