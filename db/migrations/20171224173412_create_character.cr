class CreateCharacter::V20171224173412 < LuckyMigrator::Migration::V1
  def migrate
    create :characters do
     add name : String
     add server : String
     add level : Int32
     add race : Int32
     add gender : Int32
    end
  end

  def rollback
    drop :characters
  end
end
