class User
  attr_reader :name, :password, :bio, :age, :auth
  def initialize(name, bio, age, password)
    @name = name
    @bio = bio
    @age = age
    @password = password
    @auth = Authentication.new
  end

  def authenticate(password)
    auth.authenticate(password)
  end

  def profile
    "#{@name}, born in #{birth_year}: #{@bio}"
  end

  private

  def birth_year
    Time.new.year - @age
  end
end

class Authentication
  attr_reader :name, :password
  def initialize
    @candidate_password = "123"
  end

  def authenticate(password)
    return true if password == @candidate_password
    false
  end

end

# Code before splitting Class

# class User
#   def initialize(name, bio, age, password)
#     @name = name
#     @bio = bio
#     @age = age
#     @password = password
#   end
#
#   def authenticate(candidate_password)
#     return true if candidate_password == @password
#     false
#   end
#
#   def profile
#     "#{@name}, born in #{birth_year}: #{@bio}"
#   end
#
#   private
#
#   def birth_year
#     Time.new.year - @age
#   end
# end
