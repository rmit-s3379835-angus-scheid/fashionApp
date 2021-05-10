class FavItemsController < ApplicationController
  before_action :set_fav_item, only: %i[ show edit update destroy ]

  # GET /fav_items or /fav_items.json
  def index
    @fav_items = FavItem.all
  end

  # GET /fav_items/1 or /fav_items/1.json
  def show
  end

  # GET /fav_items/new
  def new
    @fav_item = FavItem.new
  end

  # GET /fav_items/1/edit
  def edit
  end

  # POST /fav_items or /fav_items.json
  def create
    @fav_item = FavItem.new(fav_item_params)

    respond_to do |format|
      if @fav_item.save
        format.html { redirect_to @fav_item, notice: "Fav item was successfully created." }
        format.json { render :show, status: :created, location: @fav_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fav_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fav_items/1 or /fav_items/1.json
  def update
    respond_to do |format|
      if @fav_item.update(fav_item_params)
        format.html { redirect_to @fav_item, notice: "Fav item was successfully updated." }
        format.json { render :show, status: :ok, location: @fav_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fav_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fav_items/1 or /fav_items/1.json
  def destroy
    @fav_item.destroy
    respond_to do |format|
      format.html { redirect_to fav_items_url, notice: "Fav item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fav_item
      @fav_item = FavItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fav_item_params
      params.require(:fav_item).permit(:name, :price, :category, :popularity)
    end
end
