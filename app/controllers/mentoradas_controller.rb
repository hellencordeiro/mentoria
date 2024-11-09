class MentoradasController < ApplicationController
  def index
    @mentoradas = Mentorada.all
  end
  def show
    @mentorada = Mentorada.find(params[:id])
  end
  def new
    @mentorada = Mentorada.new
  end

  def create
    @mentorada = Mentorada.new(nome: params[:mentorada][:nome], contato: params[:mentorada][:contato], habilidades: params[:mentorada][:habilidades])

    if @mentorada.save
      redirect_to @mentorada
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @mentorada = Mentorada.find(params[:id])
  end

  def update
    @mentorada = Mentorada.find(params[:id])

    if @mentorada.update(nome: params[:mentorada][:nome], contato: params[:mentorada][:contato], habilidades: params[:mentorada][:habilidades])
      redirect_to @mentorada
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @mentorada = Mentorada.find(params[:id])
    @mentorada.destroy

    redirect_to root_path, status: :see_other
  end
end
