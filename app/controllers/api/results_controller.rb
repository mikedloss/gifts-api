class API::ResultsController < ApplicationController
  def show
    @result = Result.where(uuid: params[:uuid])
    render json: @result
  end

  def create
    # create hash that defaults to 0
    @answers = Hash.new(0)
    # add each answer to the hash
    params[:results].each_with_index do |answer, index|
      @answers[index % 27] += answer.to_i
    end

    top6_gifts = @answers.sort_by{|k, v| v}.reverse.slice(0, 6)
    gift_ids = top6_gifts.collect(&:first)
    p1, p2, p3, s1, s2, s3 = top6_gifts

    @result = Result.create(results_params)
    @result.primary1_id = gift_ids[0]
    @result.primary2_id = gift_ids[1]
    @result.primary3_id = gift_ids[2]
    @result.secondary1_id = gift_ids[3]
    @result.secondary2_id = gift_ids[4]
    @result.secondary3_id = gift_ids[5]
    @result.raw_results = @answers.to_json

    if @result.save
      render json: @result
    else
      render body: "Server error", status: 500
    end
  end

  private
    def results_params
      params.require(:result).permit(:uuid, :email, :results)
    end
end
