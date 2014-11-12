class FuerzasController < ApplicationController

  def index
    @fuerzas = Fuerza.where(type: ['Aerea','Naval','Terrestre']).order(:casa_id)

    respond_with(@fuerzas)
  end

  def create
    @fuerza = Fuerza.create(casas_params)

    respond_with(@fuerza)
  end

  def casas_params
    params.require(:fuerza).permit(
      :type,
      :cantidad_dragones,
      :cantidad_barcos,
      :cantidad_soldados
    ).merge({
      casa: casa
    })
  end

  def casa
    Casa.find_by(nombre: params[:fuerza][:casa])
  end
end