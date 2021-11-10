class CreateDexterity < Neo4j::Migrations::Base
  def up
    add_constraint :Dexterity, :code
  end

  def down
    drop_constraint :Dexterity, :code
  end
end
