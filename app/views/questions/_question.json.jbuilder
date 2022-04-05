json.extract! question, :id, :question_number, :question, :answer, :question_vn, :answer_vn, :created_at, :updated_at
json.url question_url(question, format: :json)
