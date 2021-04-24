class CreateCharacterSubclasses < ActiveRecord::Migration[6.0]
  def change
    create_table :character_subclasses do |t|
      t.references :character, null: false, foreign_key: true
      t.references :subclass, null: false, foreign_key: true

      t.timestamps
    end
  end
end
