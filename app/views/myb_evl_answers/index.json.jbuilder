json.array!(@myb_evl_answers) do |myb_evl_answer|
  json.extract! myb_evl_answer, :id, :Evl_id, :Question_id, :Answer, :Intake_id
  json.url myb_evl_answer_url(myb_evl_answer, format: :json)
end
