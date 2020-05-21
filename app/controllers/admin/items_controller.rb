class Admin::ItemsController < ApplicationController
  def index
  	@caritems = Caritem.all

  end

  def show
  end

  def new
  	@caritem = Caritem.new
  end

  def edit
  end

  def create
  	@caritem=Caritem.new(caritem_params)
  	@caritem.save
  	redirect_to admin_item_path(@caritem)
  end

  private
  def caritem_params
  	params.require(:caritem).permit(:name,:text,:price ,:carimage)
  end
end
