class GoodbadsController < ApplicationController
  before_action :set_goodbad, only: [:show, :edit, :update, :destroy]

  def index
    @goodbads = Goodbad.all
  end

  def show
  end

  def new
    @goodbad = Goodbad.new
  end

  def edit
  end

  def create
    @goodbad = Goodbad.new(goodbad_params)
    if @goodbad.save
      redirect_to @goodbad, notice: 'Goodbad was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @goodbad.update(goodbad_params)
      redirect_to @goodbad, notice: 'Goodbad was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @goodbad.destroy
      redirect_to goodbads_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goodbad
      @goodbad = Goodbad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def goodbad_params
      params.require(:goodbad).permit(:goodbad)
    end
end
