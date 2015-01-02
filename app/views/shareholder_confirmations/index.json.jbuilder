json.array!(@shareholder_confirmations) do |shareholder_confirmation|
  json.extract! shareholder_confirmation, :id, :sh_firstname, :sh_mi, :sh_last_name, :sh_bldg, :notes
  json.url shareholder_confirmation_url(shareholder_confirmation, format: :json)
end
