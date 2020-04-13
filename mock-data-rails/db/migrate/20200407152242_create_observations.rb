class CreateObservations < ActiveRecord::Migration[6.0]
  def change
    create_table :observations do |t|
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
