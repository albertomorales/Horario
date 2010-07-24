class CreateCursos < ActiveRecord::Migration
  def self.up
    create_table :cursos do |t|
      t.string :nombre
      t.string :descripcion
      t.Date :hora_inicio
      t.Date :hora_final

      t.timestamps
    end
  end

  def self.down
    drop_table :cursos
  end
end
