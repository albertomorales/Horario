require 'test_helper'

class MatriculaTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  
  context "Una matricula" do
    setup do
      @matricula = Matricula.new(:alumno_id => 1)
    end
    
    should "have one student" do
      assert_equal 1, @matricula.alumno_id
    end
    
    should "have one curso"
  end
  

end
