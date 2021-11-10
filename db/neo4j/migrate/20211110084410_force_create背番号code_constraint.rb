class ForceCreate背番号codeConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :背番号, :code, force: true
  end

  def down
    drop_constraint :背番号, :code
  end
end
