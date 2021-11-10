class ForceCreate体重codeConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :体重, :code, force: true
  end

  def down
    drop_constraint :体重, :code
  end
end
