class User 
  attr_accessor :name, :password

  def initialize(args)
    @name = args[:name]
    @password = args[:password]
  end

end
