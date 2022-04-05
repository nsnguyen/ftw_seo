class CreateQuestionAudios < ActiveRecord::Migration[7.0]
  def change
    create_table :question_audios do |t|
      t.integer :question_id
      t.integer :question_number,    null: false
      t.blob :question_audio,        size: "medium"
      t.blob :answer_audio,          size: "medium"

      t.timestamps
    end
    add_index :questions, [:id], using: :btree
  end
end
