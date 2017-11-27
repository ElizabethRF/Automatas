class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :lastname1
      t.string :lastname2
      t.string :email
      t.string :password_digest
      t.string :tipo

      t.timestamps
    end
  end
end
