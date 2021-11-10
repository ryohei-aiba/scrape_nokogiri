class CreateBirth < Neo4j::Migrations::Base
  def up
    add_constraint :Birth, :code
  end

  def down
    drop_constraint :Birth, :code
  end
end
