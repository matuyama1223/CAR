class Admin::ItemsController < ApplicationController
  def index
  	@caritems = Caritem.all
  end

  def show
  	@caritem = Caritem.find(params[:id])
  end

  def new
  	@caritem = Caritem.new
  end

  def edit
  	@caritem = Caritem.find(params[:id])
  end

  def create
  	@caritem=Caritem.new(caritem_params)
  	@caritem.save
  	redirect_to admin_item_path(@caritem)
  end
  def update
    @caritem=Caritem.find(params[:id])
    @caritem.update(caritem_params)
    redirect_to admin_items_path(@caritem)
  end
  def destroy
    @caritem = Caritem.find(params[:id])
    @caritem.destroy
    redirect_to admin_item_path
  end


  private
  def caritem_params
  	params.require(:caritem).permit(:name,:text,:price ,:carimage,:time)
  end
end
