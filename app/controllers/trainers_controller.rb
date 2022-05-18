class TrainersController < ApplicationController
  before_action :set_trainer, only: [:show, :edit, :update, :destroy]

  # GET /trainers
  def index
    @trainers = Trainer.all
  end

  # GET /trainers/1
  def show
  end

  # GET /trainers/new
  def new
    @trainer = Trainer.new
  end

  # GET /trainers/1/edit
  def edit
  end

  # POST /trainers
  def create
    @trainer = Trainer.new(trainer_params)

    if @trainer.save
      redirect_to @trainer, notice: 'Trainer was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /trainers/1
  def update
    if @trainer.update(trainer_params)
      redirect_to @trainer, notice: 'Trainer was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /trainers/1
  def destroy
    @trainer.destroy
    redirect_to trainers_url, notice: 'Trainer was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trainer
      @trainer = Trainer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trainer_params
      params.require(:trainer).permit(:name, :banner_url)
    end
end
