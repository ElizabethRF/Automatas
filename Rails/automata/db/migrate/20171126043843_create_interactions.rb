class CreateInteractions < ActiveRecord::Migration[5.1]
  def change
    create_table :interactions do |t|
      t.references :simbol, foreign_key: true
      t.references :user, foreign_key: true
      t.references :paciente, foreign_key: true
      t.text :comentarios

      t.timestamps
    end
  end
end
