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
    @matricula = Matricula.new(params[:matricula])

    respond_to do |format|
      if @matricula.save
        format.html { redirect_to(@matricula, :notice => 'Matricula was successfully created.') }
        format.xml  { render :xml => @matricula, :status => :created, :location => @matricula }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @matricula.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /matriculas/1
  # PUT /matriculas/1.xml
  def update
    @matricula = Matricula.find(params[:id])

    respond_to do |format|
      if @matricula.update_attributes(params[:matricula])
        format.html { redirect_to(@matricula, :notice => 'Matricula was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @matricula.errors, :status => :unprocessable_entity }
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
end
