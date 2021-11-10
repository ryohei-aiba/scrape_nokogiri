class Player 
  include Neo4j::ActiveNode
  id_property :code
  property :name, type: String
  self.mapped_label_name = '選手名'
  has_many :out, :ages, type: :年齢, unique: true
  has_many :out, :births, type: :生年月日, unique: true
  has_many :out, :blood_types, type: :血液型, unique: true
  has_many :out, :dexterities, type: :投打, unique: true
  has_many :out, :froms, type: :出身地, unique: true
  has_many :out, :heights, type: :身長, unique: true
  has_many :out, :incomes, type: :年俸, unique: true
  has_many :out, :numbers, type: :背番号, unique: true
  has_many :out, :positions, type: :守備, unique: true
  has_many :out, :weights, type: :体重, unique: true
  has_many :out, :years, type: :年数, unique: true
  validates :name, :presence => true
end

File.open(Rails.root + 'app/models/concerns/players.json') do |file|  
  hash = JSON.load(file)

  i=0
  while i<=(hash.length/12)
    unless Player.find_by(name: hash[i*12 + 1])
      player = Player.create(name: hash[i*12 + 1])

      if !Age.find_by(name: hash[i*12 + 4])
        player.ages << Age.create(name: hash[i*12 + 4])
      else
        Age.find_by(name: hash[i*12 + 4]).players << player
      end  

      if !Birth.find_by(name: hash[i*12 + 3])
        player.births << Birth.create(name: hash[i*12 + 3])
      else
        Birth.find_by(name: hash[i*12 + 3]).players << player
      end

      if !BloodType.find_by(name: hash[i*12 + 8])
        player.blood_types << BloodType.create(name: hash[i*12 + 8])
      else
        BloodType.find_by(name: hash[i*12 + 8]).players << player
      end

      if !Dexterity.find_by(name: hash[i*12 + 9])
        player.dexterities << Dexterity.create(name: hash[i*12 + 9])
      else
        Dexterity.find_by(name: hash[i*12 + 9]).players << player
      end

      if !From.find_by(name: hash[i*12 + 10])
        player.froms << From.create(name: hash[i*12 + 10])
      else
        From.find_by(name: hash[i*12 + 10]).players << player
      end

      if !Height.find_by(name: hash[i*12 + 6])
        player.heights << Height.create(name: hash[i*12 + 6])
      else
        Height.find_by(name: hash[i*12 + 6]).players << player
      end

      if !Income.find_by(name: hash[i*12 + 11])
        player.incomes << Income.create(name: hash[i*12 + 11])
      else
        Income.find_by(name: hash[i*12 + 11]).players << player
      end

      if !Number.find_by(name: hash[i*12])
        player.numbers << Number.create(name: hash[i*12])
      else
        Number.find_by(name: hash[i*12]).players << player
      end

      if !Position.find_by(name: hash[i*12 + 2])
        player.positions << Position.create(name: hash[i*12 + 2])
      else
        Position.find_by(name: hash[i*12 + 2]).players << player
      end

      if !Weight.find_by(name: hash[i*12 + 7])
        player.weights << Weight.create(name: hash[i*12 + 7])
      else
        Weight.find_by(name: hash[i*12 + 7]).players << player
      end

      if !Year.find_by(name: hash[i*12 + 5])
        player.years << Year.create(name: hash[i*12 + 5])
      else
        Year.find_by(name: hash[i*12 + 5]).players << player
      end
    end
    i+=1
  end
end