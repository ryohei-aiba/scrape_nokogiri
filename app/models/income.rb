class Income 
  include Neo4j::ActiveNode
  id_property :code
  property :name, type: String
  self.mapped_label_name = '年俸'
  has_many :in, :players, origin: :incomes, unique: true
  validates :name, :presence => true
end
