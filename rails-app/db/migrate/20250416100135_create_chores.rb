class CreateChores < ActiveRecord::Migration[8.0]
  def change
    create_table :chores do |t|
      t.string :name, null: false
      t.json :schedule, null: false
      t.belongs_to :household, null: false, foreign_key: true

      t.timestamps
    end
  end
end
