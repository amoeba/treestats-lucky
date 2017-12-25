class Characters::IndexPage < MainLayout
  needs characters : CharacterQuery

  def inner
    h2 "Listing Characters"

    ul class: "my-character-list" do
      @characters.each do |character|
        li do
          a "#{character.name} (#{character.server})", href: "/characters/#{character.name}/#{character.server}"
        end
      end
    end
  end
end
