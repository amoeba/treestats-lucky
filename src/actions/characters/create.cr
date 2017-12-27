require "json"

class Characters::Create < BrowserAction
  action do
    # data = %({
    #     "name": "Test",
    #     "server": "Test",
    #     "level": 275,
    #     "race": 0,
    #     "gender": 0
    # })
    data = request.body.to_s
    params = NamedTuple(name: String, server: String).from(JSON.parse(data).as_h)

    saved = CharacterForm.new(**params).save

    if saved
      render_text "#{saved}"
    else
      render_text "#{saved}"
    end
  end
end
