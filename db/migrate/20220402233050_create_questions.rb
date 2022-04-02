class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.integer :id
      t.integer :question_number
      t.text :question
      t.text :answer

      t.timestamps
    end
  end
end
