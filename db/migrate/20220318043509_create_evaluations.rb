class CreateEvaluations < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluations do |t|
      t.integer :rate, null: false, default: 0
      t.integer :user_id
      t.integer :question_id
      t.timestamps
    end
  end
end
