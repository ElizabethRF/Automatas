class CreateSimbols < ActiveRecord::Migration[5.1]
  def change
    create_table :simbols do |t|
      t.string :name
      t.string :picture
      t.text :detail

      t.timestamps
    end
  end
end
