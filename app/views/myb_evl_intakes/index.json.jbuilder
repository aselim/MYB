json.array!(@myb_evl_intakes) do |myb_evl_intake|
  json.extract! myb_evl_intake, :id, :Solver_id, :Start_time, :Duration_min, :Result, :Evl_id
  json.url myb_evl_intake_url(myb_evl_intake, format: :json)
end
