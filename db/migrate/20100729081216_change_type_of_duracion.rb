class ChangeTypeOfDuracion < ActiveRecord::Migration
  def self.up
     change_column :horarios, :duracion, :decimal, 
      :precision => 4, :scale => 2, :default =>0, :null => false

  end

  def self.down
    raise ActiveRecord::reversibleMigration

  end
end
