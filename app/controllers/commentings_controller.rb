class CommentingsController < ApplicationController
  before_action :set_commenting, only: %i[ show edit update destroy ]

  # GET /commentings or /commentings.json
  def index
    @commentings = Commenting.all
  end

  # GET /commentings/1 or /commentings/1.json
  def show
  end

  # GET /commentings/new
  def new
    #@main_page = MainPage.find(params[:main_page_id])
    @commenting = Commenting.new
  end

  # GET /commentings/1/edit
  def edit
  end

  # POST /commentings or /commentings.json
  def create
    @commenting = Commenting.new(commenting_params)

    respond_to do |format|
      if @commenting.save
        format.html { redirect_to @main_page, notice: "Commenting was successfully created." }
        format.json { render :show, status: :created, location: @commenting }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @commenting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /commentings/1 or /commentings/1.json
  def update
    respond_to do |format|
      if @commenting.update(commenting_params)
        format.html { redirect_to @commenting, notice: "Commenting was successfully updated." }
        format.json { render :show, status: :ok, location: @commenting }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @commenting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commentings/1 or /commentings/1.json
  def destroy
    @commenting.destroy!

    respond_to do |format|
      format.html { redirect_to commentings_path, status: :see_other, notice: "Commenting was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_commenting
      @commenting = Commenting.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def commenting_params
      params.expect(commenting: [ :response, :main_page_id, :parent_id ])
    end
end
