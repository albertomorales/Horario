class CreateCursos < ActiveRecord::Migration
  def self.up
    create_table :cursos do |t|
      t.string :nombre
      t.string :descripcion


      t.timestamps
    end
  end

  def self.down
    drop_table :cursos
  end
end
