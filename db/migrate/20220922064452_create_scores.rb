class CreateScores < ActiveRecord::Migration[7.0]
  def change
    create_table :scores do |t|
      t.string :subject
      t.integer :point
      t.string :grade
      t.belongs_to :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
