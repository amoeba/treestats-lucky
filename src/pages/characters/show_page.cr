class Characters::ShowPage < MainLayout
  needs character : Character

  def inner
    h2 "Showing Character"
    h3 "#{@character.name} (#{@character.server})"
  end
end
