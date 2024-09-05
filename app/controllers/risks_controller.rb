class RisksController < ApplicationController
  # GET /risks
  def index
    @risks = Risk.all
  end

  # GET /risks/new
  def new
    @risk = Risk.new
  end

  # POST /risks
  def create
    @risk = Risk.new(risk_params)
    if @risk.save
      redirect_to @risk
    else
      render :new
    end
  end

  # GET /risks/:id
  def show
    @risk = Risk.find(params[:id])
  end

  private

  # Only allow a list of trusted parameters through
  def risk_params
    params.require(:risk).permit(:name, :description, :severity, :mitigations)
  end
end
