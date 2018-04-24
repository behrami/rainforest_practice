class ReviewsController < ApplicationController

  # def new
  #   @review = Review.new
  # end

  def create
    @review = Review.new

    @review.content = params[:review][:content]
    @review.product_id = params[:product_id]
    # @review.customer_id = 1 #for now, must change when u add login
    @review.customer_id = current_customer.id

    if @review.save!
      redirect_to product_path(id: params[:product_id])
    else
      flash[:warning] = @review.errors.full_messages
      redirect_to product_path(id: params[:product_id])
    end
  end

  #-----------------------------------------------------

  def index
  end

  def show
  end

  #----------------------------------------------------

  def edit
    review_id = params[:id]
    @review = Review.find(review_id)
    @product = @review.product
  end

  def update
    review_id = params[:id]
    @review = Review.find(review_id)

    product_id = params[:product_id]
    @product = Product.find(product_id)

    @review.content = params[:review][:content]

    if @review.save
      redirect_to product_path(id: product_id)
    else
      render :edit
    end
  end

  #----------------------------------------------------

  def destroy
    review_id = params[:id]
    product_id = params[:product_id]
    @review = Review.find(review_id)
    @review.destroy
    redirect_to product_path(id: product_id)
  end

end
