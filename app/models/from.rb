class From 
  include Neo4j::ActiveNode
  id_property :code
  property :name, type: String
  self.mapped_label_name = '出身地'
  has_many :in, :players, origin: :froms, unique: true
  validates :name, :presence => true
end
