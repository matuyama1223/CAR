class Users::ItemsController < ApplicationController
  def index
  	@caritems = Caritem.all
  end

  def show
  end

end
