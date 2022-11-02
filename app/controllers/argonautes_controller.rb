class ArgonautesController < ApplicationController
  def index
    @argonautes = Argonaute.all
  end

  def new
    @argonaute = Argonaute.new
  end

  def create
    @argonaute = Argonaute.new(argonaute_params)
    if @argonaute.save
      redirect_to argonautes_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def argonaute_params
    params.require(:argonaute).permit(:name)
  end
end
