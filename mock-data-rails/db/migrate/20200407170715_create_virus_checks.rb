class CreateVirusChecks < ActiveRecord::Migration[6.0]
  def change
    create_table :virus_checks do |t|
      t.boolean :coronavirus
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
