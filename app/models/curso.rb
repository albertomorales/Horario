class Curso < ActiveRecord::Base
  has_many :matriculas
  has_many :horarios
  OTRO = []
  
  validates_inclusion_of :nombre, :in =>
OTRO.map {|disp, value| value}

  
  
end
