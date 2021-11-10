class ForceCreate守備codeConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :守備, :code, force: true
  end

  def down
    drop_constraint :守備, :code
  end
end
