class Dexterity 
  include Neo4j::ActiveNode
  id_property :code
  property :name, type: String
  self.mapped_label_name = '投打'
  has_many :in, :players, origin: :dexterities, unique: true
  validates :name, :presence => true
end
