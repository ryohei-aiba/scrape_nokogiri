class Height 
  include Neo4j::ActiveNode
  id_property :code
  property :name, type: String
  self.mapped_label_name = '身長'
  has_many :in, :players, origin: :heights, unique: true
  validates :name, :presence => true
end
