class TrainersController < ApplicationController
  before_action :set_trainer, only: [:show, :edit, :update, :destroy]

  # GET /trainers
  def index
    @trainers = Trainer.all

    if params[:query]
      require 'algolia'

      # Connect and authenticate with your Algolia app
      client = Algolia::Search::Client.create('YourApplicationID', 'YourAdminAPIKey')

      # Create a new index and add a record
      index = client.init_index('test_index')
      record = { 'objectID': 1, 'name': 'test_record'}
      index.save_object(record).wait()

      # Search the index and print the results
      results = index.search('test_record')
      puts results[:hits][0]
    end
  end

  # GET /trainers/1
  def show
    @pokemon = Pokemon.new
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
