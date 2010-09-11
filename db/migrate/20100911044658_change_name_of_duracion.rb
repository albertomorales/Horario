class ChangeNameOfDuracion < ActiveRecord::Migration
  def self.up
    rename_column :horarios, :duracion, :hora_f
  end

  def self.down
    rename_column :horarios, :hora_f , :durarion
  end
end
