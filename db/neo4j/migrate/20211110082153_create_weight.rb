class CreateWeight < Neo4j::Migrations::Base
  def up
    add_constraint :Weight, :code
  end

  def down
    drop_constraint :Weight, :code
  end
end
