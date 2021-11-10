class CreateAge < Neo4j::Migrations::Base
  def up
    add_constraint :Age, :code
  end

  def down
    drop_constraint :Age, :code
  end
end
