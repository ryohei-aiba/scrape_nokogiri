class Year 
  include Neo4j::ActiveNode
  id_property :code
  property :name, type: String
  self.mapped_label_name = '年数'
  has_many :in, :players, origin: :years, unique: true
  validates :name, :presence => true
end
