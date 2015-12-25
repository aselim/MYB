json.array!(@myb_pad_accounts) do |myb_pad_account|
  json.extract! myb_pad_account, :id, :Username, :Password
  json.url myb_pad_account_url(myb_pad_account, format: :json)
end
