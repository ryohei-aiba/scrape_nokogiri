class ForceCreate年数codeConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :年数, :code, force: true
  end

  def down
    drop_constraint :年数, :code
  end
end
