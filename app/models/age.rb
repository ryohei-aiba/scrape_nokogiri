class Age 
  include Neo4j::ActiveNode
  id_property :code
  property :name, type: String
  self.mapped_label_name = '年齢'
  has_many :in, :players, origin: :ages, unique: true
  validates :name, :presence => true
end
