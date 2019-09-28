class CreateDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :documents do |t|
      t.string :nom
      t.string :client
      t.string :matiere
      t.string :annee

      t.timestamps
    end
  end
end
