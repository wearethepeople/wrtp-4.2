class BeliefsController < ApplicationController
  before_action :set_belief, only: [:show, :edit, :update, :destroy]

  # GET /beliefs
  # GET /beliefs.json
  def index
    @beliefs = Belief.all
  end

  # GET /beliefs/1
  # GET /beliefs/1.json
  def show
  end

  # GET /beliefs/new
  def new
    @belief = Belief.new
  end

  # GET /beliefs/1/edit
  def edit
  end

  # POST /beliefs
  # POST /beliefs.json
  def create
    @belief = Belief.new(belief_params)

    respond_to do |format|
      if @belief.save
        format.html { redirect_to @belief, notice: 'Belief was successfully created.' }
        format.json { render :show, status: :created, location: @belief }
      else
        format.html { render :new }
        format.json { render json: @belief.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beliefs/1
  # PATCH/PUT /beliefs/1.json
  def update
    respond_to do |format|
      if @belief.update(belief_params)
        format.html { redirect_to @belief, notice: 'Belief was successfully updated.' }
        format.json { render :show, status: :ok, location: @belief }
      else
        format.html { render :edit }
        format.json { render json: @belief.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beliefs/1
  # DELETE /beliefs/1.json
  def destroy
    @belief.destroy
    respond_to do |format|
      format.html { redirect_to beliefs_url, notice: 'Belief was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_belief
      @belief = Belief.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def belief_params
      params.require(:belief).permit(:title, :summary, :explanation, :score)
    end
end
