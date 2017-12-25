class Home::Index < BrowserAction
  get "/" do
    redirect to: Characters::Index
  end
end
