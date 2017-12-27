class Character < BaseModel
  table :characters do
    field name : String
    field server : String
    field level : Int32?
    field race : Int32?
    field gender : Int32?
  end
end
