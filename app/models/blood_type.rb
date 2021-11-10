class BloodType 
  include Neo4j::ActiveNode
  id_property :code
  property :name, type: String
  self.mapped_label_name = '血液型'
  has_many :in, :players, origin: :blood_types, unique: true
  validates :name, :presence => true
end
