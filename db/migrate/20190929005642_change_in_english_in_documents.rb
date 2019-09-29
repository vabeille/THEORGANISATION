class ChangeInEnglishInDocuments < ActiveRecord::Migration[5.2]
  def change
    remove_column :documents, :nom, :string
    remove_column :documents, :matiere, :string
  end
end
