class ForceCreate身長codeConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :身長, :code, force: true
  end

  def down
    drop_constraint :身長, :code
  end
end
