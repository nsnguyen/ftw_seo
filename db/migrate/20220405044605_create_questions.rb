class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.integer :question_number,        null: false
      t.text :question,                  null: false
      t.text :answer,                    null: false
      t.text :question_vn,               null: false
      t.text :answer_vn,                 null: false

      t.timestamps
    end
    add_index :questions, [:id, :question_number], using: :btree
  end
end
