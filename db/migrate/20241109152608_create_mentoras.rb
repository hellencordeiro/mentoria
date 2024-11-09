class CreateMentoras < ActiveRecord::Migration[8.1]
  def change
    create_table :mentoras do |t|
      t.string :name
      t.string :contato
      t.string :habilidades

      t.timestamps
    end
  end
end
