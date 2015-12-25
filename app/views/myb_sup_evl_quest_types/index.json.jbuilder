json.array!(@myb_sup_evl_quest_types) do |myb_sup_evl_quest_type|
  json.extract! myb_sup_evl_quest_type, :id, :Type
  json.url myb_sup_evl_quest_type_url(myb_sup_evl_quest_type, format: :json)
end
