class FlipsController < ApplicationController

  def index
    flips = Flip.all
    render json: flips
  end

  def create
    flip = Flip.create(question: params[:question], answer: params[:answer], remind: params[:remind], detail: params[:detail])
    render json: flip
  end

  def update
    flip = Flip.find(params[:id])
    flip.update_attributes(question: params[:question], answer: params[:answer], detail: params[:detail])
    render json: flip
  end

  def destroy
    flip = Flip.find(params[:id])
    if flip.destroy
      head :no_content, status: :ok
    else
      render json: flip.errors, status: :unprocessable_entity
    end
  end

end
