class AddCheckboxToInteractions < ActiveRecord::Migration[5.1]
  def change
    add_column :interactions, :checkbox, :boolean
  end
end
