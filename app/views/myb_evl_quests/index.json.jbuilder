json.array!(@myb_evl_quests) do |myb_evl_quest|
  json.extract! myb_evl_quest, :id, :Type, :Question, :Answer, :Evl_id, :Serial
  json.url myb_evl_quest_url(myb_evl_quest, format: :json)
end
