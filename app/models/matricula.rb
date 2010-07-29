class Matricula < ActiveRecord::Base
  belongs_to :alumno
  belongs_to :curso

  validates_presence_of :alumno_id
  validates_presence_of :curso_id
  
  named_scope :para_el_alumno, lambda {|alumno| {:conditions => ["matriculas.alumno_id = ?", alumno.id]}}
 
     LISTA_CURSOS= []
    LISTA_ALUMNOS = []
    range = (0..0)

def self.nombre_curso

    items= Curso.find_by_sql("select * from cursos")
    items.each do |iter|
      LISTA_CURSOS << [iter.nombre, iter.id]
       end
    LISTA_CURSOS
end
  
def self.nombre_alumno
   
     items= Alumno.find_by_sql("select * from alumnos")
     items.each do |iter|
       LISTA_ALUMNOS << [ iter.nombre ,iter.id]
       end        
   LISTA_ALUMNOS
end
    
  def que_no_tenga_conflicto_con(otra_matricula)
    
      todas_matriculas = Matricula.find(:all)
      todas_matriculas.each do |iter|
         if iter.curso_id != otra_matricula.curso_id

              
               horas = Horario.find_all_by_curso_id(iter.curso_id)
               horas_otra = Horario.find_all_by_curso_id(otra_matricula.curso_id)
               #debugger
               horas.each do |iter_h|
                 horas_otra.each do |iter_h_o|
                   if iter_h.dia == iter_h_o.dia
                         range =(iter_h.hora..iter_h.duracion)
                          range2 = (iter_h_o.hora.. iter_h_o.duracion)
                          #debugger
                         if range.intersection(range2)!= nil
                           return false 
                           
                          end
                  end

                 end 

               end
         else
      
         end

      end


    return false


    

  end
  
   end
 class Range  
   def intersection(other)  
    raise ArgumentError, 'el valor debe ser un rango valido' unless other.kind_of?(Range)  
   
     min, max = first, exclude_end? ? max : last  
     other_min, other_max = other.first, other.exclude_end? ? other.max : other.last  
   
     new_min = self === other_min ? other_min : other === min ? min : nil  
     new_max = self === other_max ? other_max : other === max ? max : nil  
   
     new_min && new_max ? new_min..new_max : nil  
   end  

   alias_method :&, :intersection  
 end  
