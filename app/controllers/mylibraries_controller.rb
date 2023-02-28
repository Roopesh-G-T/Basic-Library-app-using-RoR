class MylibrariesController < ApplicationController
  before_action :set_mylibrary, only: %i[ show edit update destroy ]

  # GET /mylibraries or /mylibraries.json
  def index
    @mylibraries = Mylibrary.all
  end

  # GET /mylibraries/1 or /mylibraries/1.json
  def show
  end

  # GET /mylibraries/new
  def new
    @mylibrary = Mylibrary.new
  end

  # GET /mylibraries/1/edit
  def edit
  end

  # POST /mylibraries or /mylibraries.json
  def create
    @mylibrary = Mylibrary.new(mylibrary_params)

    respond_to do |format|
      if @mylibrary.save
        format.html { redirect_to mylibrary_url(@mylibrary), notice: "Mylibrary was successfully created." }
        format.json { render :show, status: :created, location: @mylibrary }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mylibrary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mylibraries/1 or /mylibraries/1.json
  def update
    respond_to do |format|
      if @mylibrary.update(mylibrary_params)
        format.html { redirect_to mylibrary_url(@mylibrary), notice: "Mylibrary was successfully updated." }
        format.json { render :show, status: :ok, location: @mylibrary }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mylibrary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mylibraries/1 or /mylibraries/1.json
  def destroy
    @mylibrary.destroy

    respond_to do |format|
      format.html { redirect_to mylibraries_url, notice: "Mylibrary was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mylibrary
      @mylibrary = Mylibrary.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mylibrary_params
      params.require(:mylibrary).permit(:author, :name, :category, :price, :isbn, :edition)
    end
end
