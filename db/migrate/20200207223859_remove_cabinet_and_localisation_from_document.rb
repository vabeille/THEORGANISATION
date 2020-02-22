class RemoveCabinetAndLocalisationFromDocument < ActiveRecord::Migration[5.2]
  def change
    remove_column :documents, :cabinet
    remove_column :documents, :localisation
  end
end
