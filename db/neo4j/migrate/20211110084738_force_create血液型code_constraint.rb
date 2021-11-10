class ForceCreate血液型codeConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :血液型, :code, force: true
  end

  def down
    drop_constraint :血液型, :code
  end
end
