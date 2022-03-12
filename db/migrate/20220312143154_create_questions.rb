class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string "q_title"
      t.text "q_description"
      t.string "odai"
      t.timestamps
    end
  end
end
