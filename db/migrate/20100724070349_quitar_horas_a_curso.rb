class QuitarHorasACurso < ActiveRecord::Migration
  def self.up
    remove_column :cursos, :hora_inicio
    remove_column :cursos, :hora_final
  end

  def self.down
    add_column :cursos, :hora_inicio
    add_column :cursos, :hora_final
  end
end
