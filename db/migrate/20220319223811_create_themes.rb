class CreateThemes < ActiveRecord::Migration[5.2]
  def change
    create_table :themes do |t|
      t.string "q_theme"
      t.integer "question_id"
      t.timestamps
    end
  end
end
