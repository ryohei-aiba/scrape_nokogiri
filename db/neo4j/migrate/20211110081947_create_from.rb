class CreateFrom < Neo4j::Migrations::Base
  def up
    add_constraint :From, :code
  end

  def down
    drop_constraint :From, :code
  end
end
