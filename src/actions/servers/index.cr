class Servers::Index < BrowserAction
  get "/servers" do
    render_text "Servers index"
  end
end
