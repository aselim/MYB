json.array!(@myb_evl_creations) do |myb_evl_creation|
  json.extract! myb_evl_creation, :id, :Name, :Author_id, :Target_User, :Serial, :Schedule, :Eval_Time_Min
  json.url myb_evl_creation_url(myb_evl_creation, format: :json)
end
