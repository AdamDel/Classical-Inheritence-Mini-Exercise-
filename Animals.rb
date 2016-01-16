


module Flight
  def fly(velocity)
    puts "I'm a #{name} and I am flying at #{velocity}"
  end
end

class Animal
  attr_reader :name, :num_legs, :has_wings, :warm_blooded
  def initialize(name, num_legs, has_wings, warm_blooded)
    @name = name
    @num_legs = num_legs
    @has_wings = has_wings
    @warm_blooded = warm_blooded
  end

  def has_wings?
    self.has_wings
  end

  def warm_blooded?
    self.warm_blooded
  end
end

class Mammal < Animal
  attr_reader :has_milk, :has_fur
  def initialize(name, num_legs, has_wings, has_fur)
    super(name, num_legs, has_wings, warm_blooded = true)
    @has_milk = true
    @has_fur = has_fur
  end
end

class Amphibian < Animal
  def initialize(name, num_legs)
    super(name, num_legs, has_wings = false, warm_blooded =false)
  end
end

class Primate < Mammal
  def initialize(name, num_legs = 2, has_wings = false, has_fur = true)
    super
  end
end

class Frog < Amphibian
  def initialize(name, num_legs = 4)
    super
  end
end

class Bat < Mammal
  include Flight
  def initialize(name)
    super(name, num_legs = 2, has_wings = true, has_fur = true)
  end
end

class Bird < Animal 
  include Flight
  def initialize(name, num_legs = 2, has_wings = true, warm_blooded = true)
    super
  end
end


class Parrot < Bird
end

class Chimpanzee < Primate
end

bat = Bat.new("bat")
frog = Frog.new("frog")
parrot = Parrot.new("parrot")
chimp = Chimpanzee.new("Chimpanzee")

print "BAT TEST: "
puts bat.num_legs == 2 && bat.has_fur == true && bat.has_wings == true && bat.warm_blooded? ==true && bat.has_milk == true
print "FROG TEST: "
puts frog.num_legs == 4 && frog.warm_blooded? == false && frog.has_wings == false 
print "PARROT TEST: "
puts parrot.num_legs == 2 && parrot.has_wings? == true && parrot.warm_blooded? == true 
print "CHIMP TEST: "
puts chimp.num_legs == 2 && chimp.warm_blooded? == true && chimp.has_fur == true && chimp.has_milk == true

puts parrot.fly(15)
puts bat.fly(10)





