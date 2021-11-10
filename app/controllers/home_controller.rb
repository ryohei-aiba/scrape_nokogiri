class HomeController < ApplicationController
  def index
    @ages = Age.all
    @births = Birth.all
    @blood_types = BloodType.all
    @dexterities = Dexterity.all
    @froms = From.all
    @heights = Height.all
    @incomes = Income.all
    @numbers = Number.all
    @players = Player.all
    @positions = Position.all
    @weights = Weight.all
    @years = Year.all
  end
end
