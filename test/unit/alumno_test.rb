require 'test_helper'

class AlumnoTest < ActiveSupport::TestCase
  
  context "Un Alumno" do
    
    setup do
      @alberto = Alumno.find(:first, :conditions => ["nombre = ?", 'Alberto'])
    end
    
    should "find Alberto" do
      assert_equal 'Alberto', @alberto.nombre
    end
    
  end
  
  
  
end
