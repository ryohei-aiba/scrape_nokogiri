class ForceCreate出身地codeConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :出身地, :code, force: true
  end

  def down
    drop_constraint :出身地, :code
  end
end
