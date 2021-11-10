class Number 
  include Neo4j::ActiveNode
  id_property :code
  property :name, type: String
  self.mapped_label_name = '背番号'
  has_many :in, :players, origin: :numbers, unique: true
  validates :name, :presence => true
end
