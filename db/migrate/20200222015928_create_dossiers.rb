class CreateDossiers < ActiveRecord::Migration[5.2]
  def change
    create_table :dossiers do |t|
      t.text :content
      t.references :document, foreign_key: true

      t.timestamps
    end
  end
end
