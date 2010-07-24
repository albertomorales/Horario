class Matricula < ActiveRecord::Base
  belongs_to :alumno
  belongs_to :curso
  OTRO = []
  
 validates_inclusion_of :curso_id, :in =>
OTRO.map {|disp, value| value}

    OTRO2 = []
    
      validates_inclusion_of :alumno_id, :in =>
OTRO2.map {|disp, value| value}


def self.nombre_curso
     
     
     items = []
     items= Curso.find_by_sql("select * from cursos")
     items.each do |iter|
      OTRO << [iter.nombre, iter.id]
       end
      
    
    OTRO
  end
  
    def self.nombre_alumno
     
   
     items = []
     items= Alumno.find_by_sql("select * from alumnos")
     items.each do |iter|
       OTRO2 << [ iter.nombre ,iter.id]
       end
      
    
   OTRO2
    end
end
