class CreateSubclasses < ActiveRecord::Migration[6.0]
  def change
    create_table :subclasses do |t|
      t.references :classs, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
