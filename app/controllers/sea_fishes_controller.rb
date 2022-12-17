class SeaFishesController < ApplicationController
  before_action :set_sea_fish, only: %i[ show edit update destroy ]

  # GET /sea_fishes or /sea_fishes.json
  def index
    @sea_fishes = SeaFish.all
  end

  # GET /sea_fishes/1 or /sea_fishes/1.json
  def show
  end

  # GET /sea_fishes/new
  def new
    @sea_fish = SeaFish.new
  end

  # GET /sea_fishes/1/edit
  def edit
  end

  # POST /sea_fishes or /sea_fishes.json
  def create
    @sea_fish = SeaFish.new(sea_fish_params)

    respond_to do |format|
      if @sea_fish.save
        format.html { redirect_to sea_fish_url(@sea_fish), notice: "Sea fish was successfully created." }
        format.json { render :show, status: :created, location: @sea_fish }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sea_fish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sea_fishes/1 or /sea_fishes/1.json
  def update
    respond_to do |format|
      if @sea_fish.update(sea_fish_params)
        format.html { redirect_to sea_fish_url(@sea_fish), notice: "Sea fish was successfully updated." }
        format.json { render :show, status: :ok, location: @sea_fish }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sea_fish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sea_fishes/1 or /sea_fishes/1.json
  def destroy
    @sea_fish.destroy

    respond_to do |format|
      format.html { redirect_to sea_fishes_url, notice: "Sea fish was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sea_fish
      @sea_fish = SeaFish.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sea_fish_params
      params.require(:sea_fish).permit(:name, :charac, :color, :size, :habit, :place)
    end
end
