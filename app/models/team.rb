class Team
  attr_reader :name, :motto
   @@all = []

   def initialize(name:, motto:)
    @name = name
    @motto = motto
    @@all << self
  end
end
