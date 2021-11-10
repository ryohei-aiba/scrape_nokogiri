class CreateBloodType < Neo4j::Migrations::Base
  def up
    add_constraint :BloodType, :code
  end

  def down
    drop_constraint :BloodType, :code
  end
end
