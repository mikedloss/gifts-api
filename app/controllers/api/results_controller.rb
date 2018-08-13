class API::ResultsController < ApplicationController
  def show
    @result = Result.where(uuid: params[:uuid])
    render json: @result
  end

  def create
  end

  def update
  end
end
