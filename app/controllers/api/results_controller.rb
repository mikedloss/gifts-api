class API::ResultsController < ApplicationController
  def show
    @result = Result.where(uuid: params[:uuid])
    render json: @result
  end

  def create
    if (params.has_key?(:results))
      @result = Result.create
      # create hash that defaults to 0
      @answers = Hash.new(0)
      # add each answer to the hash
      params[:results].each_with_index do |answer, index|
        @answers[index % 27] += answer.to_i
      end

      # get the top 6 gifts with their scores
      p1, p2, p3, s1, s2, s3 = @answers
        .sort_by { |k,v| -v }
        .slice(0, 6)
        .map { |e| [e[0].to_s.to_i + 1, e[1]] }

      @result.uuid = SecureRandom.uuid
      @result.primary1_id = p1[0]
      @result.primary2_id = p2[0]
      @result.primary3_id = p3[0]
      @result.secondary1_id = s1[0]
      @result.secondary2_id = s2[0]
      @result.secondary3_id = s3[0]
      @result.raw_results = @answers.to_json

      if @result.save
        render json: @result
      else
        render body: "Server error", status: 500
      end
    else
      render body: "No survey results provided", status: 500
    end
  end
end
