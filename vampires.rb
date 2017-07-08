class Vampire

  attr_accessor :in_coffin, :drank_blood_today

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

  def self.sunrise # removes if the vampire isn't in the coffin but
                   # not if the vampire hasn't had any blood
    @@coven.each do |vampire|
      if vampire.drank_blood_today == false
        @@coven.delete(vampire)
      elsif vampire.in_coffin == false
        @@coven.delete(vampire)
      end
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
