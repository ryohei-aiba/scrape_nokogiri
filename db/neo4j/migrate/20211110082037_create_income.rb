class CreateIncome < Neo4j::Migrations::Base
  def up
    add_constraint :Income, :code
  end

  def down
    drop_constraint :Income, :code
  end
end
