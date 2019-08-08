class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    Product.import(params[:product][:file])
    flash[:notice] = "Countries uploaded successfully"
    redirect_to products_path #=> or where you want
  end

end
