class Characters::Index < BrowserAction
  get "/characters" do

    characters = CharacterQuery.new

    render Characters::IndexPage, characters: characters
  end
end
