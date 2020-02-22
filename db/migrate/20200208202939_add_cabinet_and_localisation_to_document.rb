class AddCabinetAndLocalisationToDocument < ActiveRecord::Migration[5.2]
  def change
    add_column :documents, :cabinet, :string
    add_column :documents, :localisation, :string
  end
end
