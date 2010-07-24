require 'test_helper'

class MatriculaTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  
  context "una matricula" do
    setup do
      @matricula = Matricula.first
    end
    
    should("tener al menos un alumno"){
      assert @matricula.alumno
      }
    should "tener al menos un curso" do
      assert @matricula.curso
    end
    
    should "allow a new student to register" do
      alumno = Alumno.last
      curso = Curso.first
      matricula = Matricula.create(:curso_id => curso.id, :alumno_id => alumno.id)
      puts matricula.errors.full_messages unless matricula.valid?
      assert matricula.valid?
      
    end
    
    should "not have schedule conflicts" do
      ynes = Alumno.find_by_nombre('Ynes')
      matriculas = Matricula.para_el_alumno(ynes)
      debugger
      assert matriculas.first.que_no_tenga_conflicto_con(matriculas.last)
    end
    
  end
  

    

end
