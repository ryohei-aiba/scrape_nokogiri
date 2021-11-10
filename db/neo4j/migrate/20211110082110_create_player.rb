class CreatePlayer < Neo4j::Migrations::Base
  def up
    add_constraint :Player, :code
  end

  def down
    drop_constraint :Player, :code
  end
end
