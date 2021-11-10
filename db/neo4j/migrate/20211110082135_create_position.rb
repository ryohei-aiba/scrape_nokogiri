class CreatePosition < Neo4j::Migrations::Base
  def up
    add_constraint :Position, :code
  end

  def down
    drop_constraint :Position, :code
  end
end
