class API::ResultsController < ApplicationController
  def show
    @result = Result.where(uuid: params[:uuid])
    render json: @result
  end

  def create
    puts params
    render json: params
  end

  def update
  end

  private
    def results_params
      params.require(:results)
    end
end
