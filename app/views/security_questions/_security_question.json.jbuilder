json.extract! security_question, :id, :question, :answer, :created_at, :updated_at
json.url security_question_url(security_question, format: :json)
