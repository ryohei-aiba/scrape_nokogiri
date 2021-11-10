class ForceCreate生年月日codeConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :生年月日, :code, force: true
  end

  def down
    drop_constraint :生年月日, :code
  end
end
