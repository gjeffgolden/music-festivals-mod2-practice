class CreateFestivals < ActiveRecord::Migration[6.1]
  def change
    create_table :festivals do |t|
      t.string :name
      t.references :venue, null: false, foreign_key: true

      t.timestamps
    end
  end
end
