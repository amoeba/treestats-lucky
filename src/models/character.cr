class Character < BaseModel
  table :characters do
    belongs_to allegiance : Allegiance
    belongs_to patron : Character
    has_many vassals : Character

    field name : String
    field server : String
    field level : Int32?
    field race : Int32?
    field gender : Int32?

    # Attributes at creation
    field strength_creation : Int32?
    field endurance_creation : Int32?
    field coordianation_creation : Int32?
    field quickness_creation : Int32?
    field focus_creation : Int32?
    field self_creation : Int32?

    # Attributes at base
    field strength_base : Int32?
    field endurance_base : Int32?
    field coordianation_base : Int32?
    field quickness_base : Int32?
    field focus_base : Int32?
    field self_base : Int32?

    # Skills (TODO)
    field alchemy_base : Int32?
    field alchemy_training : Int32?
  end
end
