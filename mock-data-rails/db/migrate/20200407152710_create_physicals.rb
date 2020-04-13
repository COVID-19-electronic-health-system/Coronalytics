class CreatePhysicals < ActiveRecord::Migration[6.0]
  def change
    create_table :physicals do |t|
      t.string :fever
      t.string :chills
      t.string :breathShortnes
      t.string :fatigue
      t.string :dryCough
      t.string :soreThroat
      t.string :bluLipsFace
      t.string :gastrointestinnal
      t.string :headache
      t.float :temperature
      t.belongs_to :observation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
