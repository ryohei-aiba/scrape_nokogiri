class CreateNumber < Neo4j::Migrations::Base
  def up
    add_constraint :Number, :code
  end

  def down
    drop_constraint :Number, :code
  end
end
