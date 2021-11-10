class ForceCreate投打codeConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :投打, :code, force: true
  end

  def down
    drop_constraint :投打, :code
  end
end
