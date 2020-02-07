class AddCartonToDocuments < ActiveRecord::Migration[5.2]
  def change
    add_column :documents, :carton, :string
  end
end
