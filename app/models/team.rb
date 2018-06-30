class Team
attr_accessor :name, :motto


  def initialize(args)
    @name = args[:team][:name]
    @motto = args[:team][:motto]
  end

end
