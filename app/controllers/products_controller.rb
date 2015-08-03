class ProductsController < ApplicationController
 before_action :set_product, only: [:show, :edit, :update, :destroy]


	def index
		@product = Product.all
	end
  def new
	   @product = Product.new
  end
  
   def create
    @product = Product.new(user_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end
  
    def show
      @product = Product.find(params[:id])
	  @relatedReviews = @product.reviews
  end
  
    def update
    respond_to do |format|
      if @product.update(user_params)
        format.html { redirect_to @product, notice: 'product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /users/1/edit
  def edit
	@product = Product.find(params[:id])
  end
  
  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
   private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end
	
     # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:product).permit(:usb, :name, :brand)
    end
end
