class Position 
  include Neo4j::ActiveNode
  id_property :code
  property :name, type: String
  self.mapped_label_name = '守備'
  has_many :in, :players, origin: :positions, unique: true
  validates :name, :presence => true
end
