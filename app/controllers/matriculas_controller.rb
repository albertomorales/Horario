class MatriculasController < ApplicationController
  # GET /matriculas
  # GET /matriculas.xml
  def index
    @matriculas = Matricula.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @matriculas }
    end
  end

  # GET /matriculas/1
  # GET /matriculas/1.xml
  def show
    @matricula = Matricula.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @matricula }
    end
  end

  # GET /matriculas/new
  # GET /matriculas/new.xml
  def new
   
    @matricula = Matricula.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @matricula }
    end
  end

  # GET /matriculas/1/edit
  def edit
    @matricula = Matricula.find(params[:id])
  end

  # POST /matriculas
  # POST /matriculas.xml
  def create
 # debugger 
    if params[:commit]== 'ver_horario'
          redirect_to(:action => 'cuadro_horario', :cur_id =>params[:matricula][:curso_id])

    else
    params[:matricula][:alumno_id] = Alumno.find(:last).id
    @matricula = Matricula.new(params[:matricula])

 
    respond_to do |format|
    if @matricula.que_no_tenga_conflicto_con(@matricula)
     
      if @matricula.save
        format.html { redirect_to(@matricula, :notice => 'Matricula was successfully created.') }
        format.xml  { render :xml => @matricula, :status => :created, :location => @matricula }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @matricula.errors, :status => :unprocessable_entity }
      end
    else
      format.html {redirect_to(@matricula, :notice => 'Conflicto con el horario')}
    end
          
    end
    end
  end

  # PUT /matriculas/1
  # PUT /matriculas/1.xml
  def update
    if params[:commit]== 'ver_horario'
          redirect_to(:action => 'cuadro_horario', :cur_id =>params[:matricula][:curso_id])

    else

    @matricula = Matricula.find(params[:id])
    params[:matricula][:alumno_id]= @matricula.alumno_id
    @prev = Matricula.new(params[:matricula])
 

    respond_to do |format|
    if @matricula.que_no_tenga_conflicto_con(@prev)

      if @matricula.update_attributes(params[:matricula])
        format.html { redirect_to(@matricula, :notice => 'Matricula was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @matricula.errors, :status => :unprocessable_entity }
      end
    else
      format.html {redirect_to(@prev, :notice => 'Conflicto con el horario')}
    end

    end
    end
  end

  # DELETE /matriculas/1
  # DELETE /matriculas/1.xml
  def destroy
    @matricula = Matricula.find(params[:id])
    @matricula.destroy

    respond_to do |format|
      format.html { redirect_to(matriculas_url) }
      format.xml  { head :ok }
    end
  end
 def cuadro_horario
  
    horarios = Horario.find_all_by_curso_id(params[:cur_id])
    @c_horarios = @template.cuadro_h
    horarios.each do |h_iter|
    hora_i = h_iter.hora.to_f
    hora_f = h_iter.hora_f.to_f

    @c_horarios[h_iter.dia][hora_i]= "######"
    d = hora_f-hora_i
    e = d - d.to_i
      if e==0.0
       h =  d.to_i * 2
      else
        h = d.to_i * 2 + 1
      end
     for i in 2..h
        h_i = hora_i - hora_i.to_i
        if h_i == 0.0
          hora_i = hora_i + 0.3
          @c_horarios[h_iter.dia][hora_i]= "######"
        else
          hora_i = hora_i + 0.7
          @c_horarios[h_iter.dia][hora_i]= "######"

        end
      end
    end
    return @c_horarios

  end 

end

