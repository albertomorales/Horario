class CreateMatriculas < ActiveRecord::Migration
  def self.up
    create_table :matriculas do |t|
      t.integer :alumno_id, :null => false, :options=>
      "CONSTRAINT fk_matricula_alumnos REFERENCES alumnos(id)"
      t.integer :curso_id, :null => false, :opcions=>
      "CONSTRAINT fk_matricula_cursos REFERENCES cursos(id)"

      t.timestamps
    end
  end

  def self.down
    drop_table :matriculas
  end
end
