require 'pry'
class Vampire

  attr_accessor :in_coffin, :drank_blood_today, :name, :age

  @@coven = []

# ======================= Initialize =======================

  def initialize(name, age)
    @name              = name
    @age               = age
    @in_coffin         = false
    @drank_blood_today = false
  end

# ===================== Class Methods ======================

  def self.create(name, age)
    @@coven << Vampire.new(name, age)
    return @@coven.last
  end

  def self.all
    @@coven
  end

  def self.sunset
    @@coven.each do |vampire|
      vampire.drank_blood_today = false
      vampire.in_coffin = false
    end
  end

  def self.sunrise
    @@coven.delete_if do |vampire|
      vampire.drank_blood_today == false || vampire.in_coffin == false
    end
  end

# ==================== Instance Methods =====================

  def drink_blood
    @drank_blood_today = true
  end

  def go_home
    @in_coffin = true
  end

end

def output_vampire_status(title)
  puts title
  puts Vampire.all.map {|vampire| [vampire.name, vampire.drank_blood_today, vampire.in_coffin] }

end

vamp1 = Vampire.create("bob", 24)
vamp2 = Vampire.create("joe", 24)
vamp3 = Vampire.create("sam", 24)
vamp4 = Vampire.create("dave", 24)
output_vampire_status("Vamps Created")
vamp4.drink_blood
vamp3.drink_blood
vamp3.go_home
vamp2.go_home
output_vampire_status("Vamps with statuses updated")
Vampire.sunrise
output_vampire_status("Vamps remaining")
