class CharacterForm < Character::BaseForm
  allow :name, :server, :level, :race, :gender

  def prepare
    validate_required name, server
  end
end
