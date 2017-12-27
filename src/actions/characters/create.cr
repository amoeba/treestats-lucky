require "json"

class Characters::Create < BrowserAction
  action do
    data = %({
        "name": "Test",
        "server": "Test",
        "level": 275,
        "race": 0,
        "gender": 0
    })

    pp data

    parsed = JSON.parse(data)
    pp parsed

    nt = NamedTuple.from_json(parsed)
    pp nt

    # character = CharacterForm.new(**JSON.parse(data)).save
    # pp character

    render_text "Done"
  end
end
