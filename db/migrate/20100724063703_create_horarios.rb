class CreateHorarios < ActiveRecord::Migration
  def self.up
    create_table :horarios do |t|
      t.string :dia
      t.time :hora
      t.time :duracion

      t.timestamps
    end
  end

  def self.down
    drop_table :horarios
  end
end
