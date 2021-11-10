class Weight 
  include Neo4j::ActiveNode
  id_property :code
  property :name, type: String
  self.mapped_label_name = '体重'
  has_many :in, :players, origin: :weights, unique: true
  validates :name, :presence => true
end
