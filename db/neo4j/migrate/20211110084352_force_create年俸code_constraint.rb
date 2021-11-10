class ForceCreate年俸codeConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :年俸, :code, force: true
  end

  def down
    drop_constraint :年俸, :code
  end
end
