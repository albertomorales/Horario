class Alumno < ActiveRecord::Base
  has_many :matriculas
 after_create :crear_matricula

 def crear_matricula

 end
 
end
