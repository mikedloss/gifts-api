class API::GiftsController < ApplicationController
  def index
    render json: Gift.all
  end

  def show
    @gift = Gift.where(id: params[:id])
    render json: @gift
  end
end
