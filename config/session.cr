require "./server"

Lucky::Session::Store.configure do
  settings.key = "TreeStats"
  settings.secret = Lucky::Server.settings.secret_key_base
end
