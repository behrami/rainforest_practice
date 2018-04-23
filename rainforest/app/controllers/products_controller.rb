class ProductsController < ApplicationController

  def new
    @product=Product.new
  end

  def create
    @product=Product.new

    @product.name= params[:product][:name]
    @product.description= params[:product][:description]
    @product.price= params[:product][:price]

    if @product.save
      redirect_to product_path(@product) #sends to the newly created product page?
    else
      render :new
    end

  end

# -------------------------------------------------------------------

  def index
    @products = Product.all
  end

  def show
    id= params[:id]
    @product = Product.find(id)

    @title = @product.name
    @product_reviews = @product.reviews

    @review = Review.new #talks to review controller????
  end

#-------------------------------------------------------------------

  def edit
    id = params[:id]
    @product = Product.find(id)
  end

  def update
    id = params[:id]
    @product = Product.find(id)

    @product.name= params[:product][:name]
    @product.description= params[:product][:description]
    @product.price= params[:product][:price]

    if @product.save
      # redirect_to product_path
      redirect_to product_path(@product)
    else
      render :edit #might change
    end
  end

#-------------------------------------------------------------------

  def destroy
    id= params[:id]
    @product = Product.find(id)
    @product.destroy
    redirect_to products_path
  end

end
