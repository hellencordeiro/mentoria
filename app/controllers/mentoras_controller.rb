class MentorasController < ApplicationController
  def index
    @mentoras = Mentora.all
  end

  def home
    render json: { oi: "teste 2" }
  end
end
