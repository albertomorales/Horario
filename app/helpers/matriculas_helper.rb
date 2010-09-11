module MatriculasHelper
   

  def nombre_curso
    @lista_c = Curso.find(:all, :order => "nombre").map {|u| [u.nombre, u.id]}
    
  end
  
  def nombre_alumno
    @lista_a = Alumno.find(:all, :order => "nombre").map {|u| [u.nombre, u.id]}
  end
  def cuadro_h
 @horarios = {'Lunes' => {'hora' => 'Lunes', 9.0 => nil,9.3 => nil,10.0 => nil,10.3 => nil,11.0 => nil,11.3 => nil,12.0 => nil,12.3 => nil,13.0 => nil,13.30 => nil,14.0 => nil,14.30 => nil,15.0 => nil,15.3 => nil,16.0 => nil,16.3 => nil,17.0 => nil,17.3 => nil,18.0 => nil,18.3 => nil,19.0 => nil,19.3 => nil,20.0 => nil}, 'Martes' => { 'hora' => "Martes", 9.0 => nil,9.3 => nil,10.0 => nil,10.3 => nil,11.0 => nil,11.3 => nil,12.0 => nil,12.3 => nil,13.0 => nil,13.30 => nil,14.0 => nil,14.30 => nil,15.0 => nil,15.3 => nil,16.0 => nil,16.3 => nil,17.0 => nil,17.3 => nil,18.0 => nil,18.3 => nil,19.0 => nil,19.3 => nil,20.0 => nil}, 'Miercoles' => {'hora' => "Miercoles", 9.0 => nil,9.3 => nil,10.0 => nil,10.3 => nil,11.0 => nil,11.3 => nil,12.0 => nil,12.3 => nil,13.0 => nil,13.30 => nil,14.0 => nil,14.30 => nil,15.0 => nil,15.3 => nil,16.0 => nil,16.3 => nil,17.0 => nil,17.3 => nil,18.0 => nil,18.3 => nil,19.0 => nil,19.3 => nil,20.0 => nil}, 'Jueves' => {'hora' => "Jueves",9.0 => nil,9.3 => nil,10.0 => nil,10.3 => nil,11.0 => nil,11.3 => nil,12.0 => nil,12.3 => nil,13.0 => nil,13.30 => nil,14.0 => nil,14.30 => nil,15.0 => nil,15.3 => nil,16.0 => nil,16.3 => nil,17.0 => nil,17.3 => nil,18.0 => nil,18.3 => nil,19.0 => nil,19.3 => nil,20.0 => nil}, 'Viernes' => {'hora' => "Viernes",9.0 => nil,9.3 => nil,10.0 => nil,10.3 => nil,11.0 => nil,11.3 => nil,12.0 => nil,12.3 => nil,13.0 => nil,13.30 => nil,14.0 => nil,14.30 => nil,15.0 => nil,15.3 => nil,16.0 => nil,16.3 => nil,17.0 => nil,17.3 => nil,18.0 => nil,18.3 => nil,19.0 => nil,19.3 => nil,20.0 => nil},'Sabado' => {'hora' => "Sabado",9.0 =>nil,9.3 => nil,10.0 => nil,10.3 => nil,11.0 => nil,11.3 => nil,12.0 => nil,12.3 => nil,13.0 => nil,13.30 => nil,14.0 => nil,14.30 => nil,15.0 => nil,15.3 => nil,16.0 => nil,16.3 => nil,17.0 => nil,17.3 => nil,18.0 => nil,18.3 => nil,19.0 => nil,19.3 => nil,20.0 => nil}}


  end
end
