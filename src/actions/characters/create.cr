class Characters::Create < BrowserAction
  action do
    params = { 
        name: "Test",
        server: "Test",
        level: "275",
        race: "0",
        gender: "0"
    }

    CharacterForm.new(**params).save

    render_text "Saved"
  end
end
