class ForceCreate年齢codeConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :年齢, :code, force: true
  end

  def down
    drop_constraint :年齢, :code
  end
end
