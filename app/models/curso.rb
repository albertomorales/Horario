class Curso < ActiveRecord::Base
  has_many :matriculas
  has_many :horarios


  
  
end
