class CreateCharacterClassses < ActiveRecord::Migration[6.0]
  def change
    create_table :character_classses do |t|
      t.references :character, null: false, foreign_key: true
      t.references :classs, null: false, foreign_key: true

      t.timestamps
    end
  end
end
