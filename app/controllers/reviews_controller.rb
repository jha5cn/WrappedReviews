class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]


	def index
		@review = Review.all
	end
  def new
	   @review = Review.new
  end
  
   def create
    @review = Review.new(user_params)

    respond_to do |format|
      if @review.save
        format.html { redirect_to @review, notice: 'Review was successfully created.' }
        format.json { render :show, status: :created, location: @review }
      else
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end
  
    def show
      @review = Review.find(params[:id])
  end
  
    def update
    respond_to do |format|
      if @review.update(user_params)
        format.html { redirect_to @review, notice: 'Review was successfully updated.' }
        format.json { render :show, status: :ok, location: @review }
      else
        format.html { render :edit }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /users/1/edit
  def edit
	@review = Review.find(params[:id])
  end
  
  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @review.destroy
    respond_to do |format|
      format.html { redirect_to reviews_url, notice: 'Review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
   private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end
	
     # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:review).permit(:usb, :content)
    end
	
	
end
