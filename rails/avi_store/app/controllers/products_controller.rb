class ProductsController < ApplicationController
  def index
    @product = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      # redirect_to will refresh the page and take you to the new page
      redirect_to action: "index"
    else
      # will stay on the same page
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to action: "index"
    else
      render :update
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def destroy
    @product = Product.find(params[:id])
    @product.delete
    redirect_to action: "index"
  end

private
  def product_params
    params.require("product").permit!
  end
end
