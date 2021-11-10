class CreateHeight < Neo4j::Migrations::Base
  def up
    add_constraint :Height, :code
  end

  def down
    drop_constraint :Height, :code
  end
end
