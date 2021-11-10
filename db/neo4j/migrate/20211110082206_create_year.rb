class CreateYear < Neo4j::Migrations::Base
  def up
    add_constraint :Year, :code
  end

  def down
    drop_constraint :Year, :code
  end
end
