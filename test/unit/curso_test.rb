require 'test_helper'

class CursoTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  context "Un curso" do
    
    setup do
      @curso = Curso.first
    end
    
    should "tener al menos un horario" do
      assert @curso.horarios.size > 0
    end
  end
  
end
