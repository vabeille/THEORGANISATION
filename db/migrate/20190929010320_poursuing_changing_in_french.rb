class PoursuingChangingInFrench < ActiveRecord::Migration[5.2]
  def change
    remove_column :documents, :annee, :string
    add_column :documents, :name, :string
    add_column :documents, :year, :string
    add_column :documents, :subject, :string
  end
end
