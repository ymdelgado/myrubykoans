require 'test/unit'

class Dog
end

class Dog2
  def set_name(a_name)
    @name= a_name
  end
end

class Dog6
    attr_reader :name
    def initialize(initial_name)
      @name = initial_name
    end
end


class Dog7
  attr_reader :name
  def initialize(initial_name)
    @name = initial_name
  end

  def get_self
    self
  end
  def to_s
    @name
  end
  def inspect
    "<Dog named '#{name}'>"
  end

end

fido = Dog7.new("Fido")

fidos_self = fido.get_self

puts fidos_self

puts "My dog is #{fido}"

puts fido.inspect

#fido= Dog2.new
#fido.set_name("Fido")
#fido.instance_eval("@name")

#fido.instance_eval { "@name" }


#class AssetRaise < Test::Unit::TestCase
  #def test_args_to_new_must_match_initialize
    ##fido= Dog6.new
    ##fido.set_name("Fido")

    ##assert_raise("wrong number of arguments (given 0, exp
##ected 1) (ArgumentError)"
##) do
     ##Dog6.new
    ##end

    ##assert_raise(fido.set_name("")) do
      ##eval "fido.@name"
    ##end
  #end
#end


