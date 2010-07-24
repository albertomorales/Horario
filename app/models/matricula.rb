class Matricula < ActiveRecord::Base
  belongs_to :alumno
  belongs_to :curso

  validates_presence_of :alumno_id
  validates_presence_of :curso_id
  
  named_scope :para_el_alumno, lambda {|alumno| {:conditions => ["matriculas.alumno_id = ?", alumno.id]}}


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
    
  def que_no_tenga_conflicto_con(otra_matricula)
    false
  end
end
