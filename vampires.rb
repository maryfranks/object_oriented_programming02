class Vampire

  @@coven = []

# ======================= Initialize =======================

  def initialize(name, age)
    @@name              = name
    @@age               = age
    @@in_coffin         = false
    @@drank_blood_today = false
  end

# ===================== Class Methods ======================

  def self.create
    @@coven << Vampire.new
    return @@coven.last 
  end

# ==================== Instance Methods =====================

end
