class ForceCreate選手名codeConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :選手名, :code, force: true
  end

  def down
    drop_constraint :選手名, :code
  end
end
