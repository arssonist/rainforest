class ProductsController < ApplicationController

  def index
    @products = Product.all
  end
  #
  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new

  end
  #
  def create
    @product = Product.new(product_params)
    @product.save
    redirect_to products_url
  end

  # def delete
  #   @product = Product.find(params[:id])
  #   @product.destroy
  #   redirect_to pictures_url
  # end
  #
  # def edit
  #   @product = Product.find(params[:id])
  # end

  def product_params
        params.require(:product).permit(:name, :description, :price_in_cents)
  end


end
