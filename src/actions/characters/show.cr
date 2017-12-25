class Characters::Show < BrowserAction
  get "/characters/:server/:name" do
    character = CharacterQuery.new.server(server).name(name).first?

    if character.nil?
      render_text "Not found: Character with server #{server} and name #{name} "
    else
      render Characters::ShowPage, character: character
    end
  end
end
