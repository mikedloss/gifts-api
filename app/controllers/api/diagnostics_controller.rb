class API::DiagnosticsController < ApplicationController
  def index
    render json: { message: "ok" }
  end
end
