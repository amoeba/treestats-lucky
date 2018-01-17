class Allegiance < BaseModel
  table :allegiances do
    field name : String
    field server : String
  end
end
