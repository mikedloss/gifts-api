class API::QuestionsController < ApplicationController
  def index
    render json: Question.all
  end

  def show
    @question = Question.where(id: params[:id])
    render json: @question
  end
end
