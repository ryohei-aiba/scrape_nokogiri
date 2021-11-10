class Birth 
  include Neo4j::ActiveNode
  id_property :code
  property :name, type: String
  self.mapped_label_name = '生年月日'
  has_many :in, :players, origin: :births, unique: true
  validates :name, :presence => true
end
