json.array!(@microcommands) do |microcommand|
  json.extract! microcommand, :id, :command_txt, :user_id
  json.url microcommand_url(microcommand, format: :json)
end
