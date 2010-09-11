class Horario < ActiveRecord::Base
  belongs_to :curso
  validates_numericality_of :hora, :hora_f
  validate :hora_inicio_menor_hora_final

  protected
  def hora_inicio_menor_hora_final
    errors.add("La hora de inicio debe ser menor que la hora final") if hora >= hora_f
  end


end
