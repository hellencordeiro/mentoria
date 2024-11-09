class MentorasController < ApplicationController
  def index
    # render json:  { oi: "teste" }
  end

  def home
    render json: { oi: "teste" }
  end
end
