class AddCursoId < ActiveRecord::Migration
  def self.up
    add_column :horarios, :curso_id, :integer
  end

  def self.down
    remove_column :horarios, :curso_id
  end
end
